unit UDataDaftarPasienIgd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ComCtrls, StdCtrls, GridsEh, DBGridEh,
  ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxButtons, cxControls, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TFDataDaftarPasienIgd = class(TForm)
    pnlTegah: TPanel;
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    lblTanggal: TLabel;
    pnlKeluar: TPanel;
    dtpTglHariIni: TDateTimePicker;
    btnBatalPasien: TcxButton;
    btnKartuBerobatUgd: TButton;
    btnLabelUgd: TButton;
    btnLabel2x1Ugd: TButton;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1noDaftar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1noRekamedis: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1unit: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1carabayar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1penjamin: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1asalPasien: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1statusKeluar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1caraKeluar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tglDaftar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1nmPasien: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1noKartuPenjamin: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1noSepPenjamin: TcxGridDBColumn;
    btnGantiPenjamin: TButton;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    btnPrinKarcis: TButton;
    btnPINERE: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
    procedure btnBatalPasienClick(Sender: TObject);
    procedure btnKartuBerobatUgdClick(Sender: TObject);
    procedure btnLabelUgdClick(Sender: TObject);
    procedure dtpTglHariIniKeyPress(Sender: TObject; var Key: Char);
    procedure btnGantiPenjaminClick(Sender: TObject);
    procedure btnLabel2x1UgdClick(Sender: TObject);
    procedure btnPrinKarcisClick(Sender: TObject);
    procedure btnPINEREClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tampilpasienhariini;
    procedure TampilsettingLink;
  end;

var
  FDataDaftarPasienIgd: TFDataDaftarPasienIgd;
  tanggal,tanggal1,noRm:String;

implementation

{$R *.dfm}

uses UDataSImrs, ADODB, DateUtils,UPendaftaran,UPendaftaranPasienIgdRanap,
    UEditPenjaminIGD,URuangPinere;

procedure TFDataDaftarPasienIgd.tampilpasienhariini;
begin
  tanggal := FormatDateTime('yyyy-MM-dd',dtpTglHariIni.Date);
  tanggal1 := FormatDateTime('yyyy-MM-dd',IncDay(dtpTglHariIni.Date,1));
  with DataSimrs.qryvw_pasienrawatjalan do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM vw_pasienrawatjalan WHERE (unit IN ("IGD","IGD PINERE")) AND (tglDaftar BETWEEN "'+tanggal+'" AND "'+tanggal1+'") ';
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

procedure TFDataDaftarPasienIgd.TampilsettingLink;
begin
  with DataSimrs.qryt_settinglinkapplainpendaftaran do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_settinglinkapplainpendaftaran where idsettinglinkapplainpendaftaran=1';
    Open;
  end;
end;

procedure TFDataDaftarPasienIgd.FormShow(Sender: TObject);
begin
  dtpTglHariIni.DateTime := Now;
  tampilpasienhariini;
end;

procedure TFDataDaftarPasienIgd.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataDaftarPasienIgd.btnBatalPasienClick(Sender: TObject);
var
  NODaftar,noDaftarIgd:String;
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
        SQL.Text := 'select * from t_registrasirawatjalan where noDaftar="'+noDaftarIgd+'"';
        Open;
      end;
      noDaftarIgd := DataSimrs.qryt_registrasirawatjalan.FieldByName('noRegistrasiRawatJalan').AsString;
      with DataSimrs.qryt_tindakanpasienrajal do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_tindakanpasienrajal where noRegistrasiRawatJalan="'+noDaftarIgd+'"';
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
                     'konsulDokter="'+IntToStr(0)+'" where noRegistrasiRawatJalan="'+noDaftarIgd+'"';
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

procedure TFDataDaftarPasienIgd.btnKartuBerobatUgdClick(Sender: TObject);
begin
if DataSimrs.qryvw_pasienrawatjalan.RecordCount >= 1 then
  begin
  noRm:= DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('noRekamedis').AsString;
  with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis="'+noRm+'"';
      Open;
      with DataSimrs.qryt_komputer do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_komputer where namaKomputer="'+GetComputerNameFromWindows+'"';
        Open;
      end;

      TampilsettingLink;

      ///FPendaftaran.frxrprtKartuBerobat.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\kartuberobat.fr3');
      FPendaftaran.frxrprtKartuBerobat.LoadFromFile(Trim(DataSimrs.qryt_settinglinkapplainpendaftaran['kartu'])+'\kartuberobat.fr3');
      FPendaftaran.frxrprtKartuBerobat.PrintOptions.Printer:= DataSimrs.qryt_komputer.FieldByname('printerKartu').AsString;
      //frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
      FPendaftaran.frxrprtKartuBerobat.PrepareReport;
      FPendaftaran.frxrprtKartuBerobat.Print;
    end;
  end
  else
   MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

procedure TFDataDaftarPasienIgd.btnLabelUgdClick(Sender: TObject);
begin
if DataSimrs.qryvw_pasienrawatjalan.RecordCount >= 1 then
  begin
  noRm:= DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('noRekamedis').AsString;
  with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis="'+noRm+'"';
      Open;
      
      with DataSimrs.qryt_komputer do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_komputer where namaKomputer="'+GetComputerNameFromWindows+'"';
        Open;
      end;

      TampilsettingLink;

      ///FPendaftaran.frxrprtGelang.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\gelang.fr3');
      FPendaftaran.frxrprtGelang.LoadFromFile(Trim(DataSimrs.qryt_settinglinkapplainpendaftaran['gelang'])+'\gelang.fr3');
      FPendaftaran.frxrprtGelang.PrintOptions.Printer:= DataSimrs.qryt_komputer.FieldByname('printerGelang').AsString;
      //frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
      FPendaftaran.frxrprtGelang.PrepareReport;
      FPendaftaran.frxrprtGelang.Print;
    end;
  end
  else
   MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

procedure TFDataDaftarPasienIgd.dtpTglHariIniKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
   tampilpasienhariini;
end;
end;

procedure TFDataDaftarPasienIgd.btnGantiPenjaminClick(Sender: TObject);
var
  idnoDaftar:String;
begin
idnoDaftar:= DataSimrs.qryvw_pasienrawatjalan['noDaftar'];
with DataSimrs.qryvw_pasienrawatjalan do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from vw_pasienrawatjalan where noDaftar="'+idnoDaftar+'"';
  Open;
end;

if DataSimrs.qryvw_pasienrawatjalan.RecordCount >= 1 then
  begin
    with FEditPenjaminIGD do
    begin
      lblNoRm.Caption :=  DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('noDaftar').AsString;
      cbbCaraBayar.Text := DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('carabayar').AsString;
      cbbPenjamin.Text := DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('penjamin').AsString;
      edtNoKartu.Text := DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('noKartuPenjamin').AsString;
      edtNoSep.Text := DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('noSepPenjamin').AsString;
      Show;
    end;
  end
  else
    ShowMessage('Data Tidak Di Temukan...!');
end;

procedure TFDataDaftarPasienIgd.btnLabel2x1UgdClick(Sender: TObject);
begin
if DataSimrs.qryvw_pasienrawatjalan.RecordCount >= 1 then
  begin
  noRm:= DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('noRekamedis').AsString;
  with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis="'+noRm+'"';
      Open;
      with DataSimrs.qryt_komputer do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_komputer where namaKomputer="'+GetComputerNameFromWindows+'"';
        Open;
      end;

      TampilsettingLink;

      ///FPendaftaran.frxrprtLabel.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\label2x1.fr3');
      FPendaftaran.frxrprtLabel.LoadFromFile(Trim(DataSimrs.qryt_settinglinkapplainpendaftaran['label2x1'])+'\label2x1.fr3');
      FPendaftaran.frxrprtLabel.ShowReport();
    end;
  end
  else
   MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

procedure TFDataDaftarPasienIgd.btnPrinKarcisClick(Sender: TObject);
var
  noDft:String;
begin
if DataSimrs.qryvw_pasienrawatjalan.RecordCount >= 1 then
  begin


        noDft := DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('noDaftar').AsString;

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

       TampilsettingLink;

       ///FPendaftaranPasienRawatInap.frxrprtKarcis.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\karcisIGD.fr3');
       FPendaftaranPasienRawatInap.frxrprtKarcis.LoadFromFile(Trim(DataSimrs.qryt_settinglinkapplainpendaftaran['karcis'])+'\karcisIGD.fr3');
       FPendaftaranPasienRawatInap.frxrprtKarcis.PrintOptions.Printer:= DataSimrs.qryt_komputer['printerKarcis'];
       FPendaftaranPasienRawatInap.frxrprtKarcis.PrintOptions.ShowDialog:=True;
       FPendaftaranPasienRawatInap.frxrprtKarcis.PrepareReport;
       FPendaftaranPasienRawatInap.frxrprtKarcis.ShowReport;
  end
  else
    MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

procedure TFDataDaftarPasienIgd.btnPINEREClick(Sender: TObject);
var
  noDft1:String;
begin
if DataSimrs.qryvw_pasienrawatjalan.RecordCount >= 1 then
  begin
  noDft1 := DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('noDaftar').AsString;
  //// pasien rawat jalan
  with DataSimrs.qryvw_pasienrawatjalan do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from vw_pasienrawatjalan where noDaftar="'+noDft1+'"';
    Open;
  end;
  /// tampil form di ruang pinere
  WITH FRuangPinere DO
  begin
    edtNODAFTAR.Text := noDft1;
    edtNODAFTARIGD.Text := DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('noRegistrasiRawatJalan').AsString;
    edtNORM.Text := DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('noRekamedis').AsString;
    edtNAMA.Text := DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('nmPasien').AsString;
    edtTTL.Text :=  DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('tempatLahir').AsString +', '+DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('tglLahir').AsString;
    mmoALAMAT.Text := DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('alamat').AsString;
    Show;
  end;
  end
  else
  MessageDlg('Data Tidak Ada...!',mtWarning,[mbOK],0);
end;

end.
