unit UDaftarDataPasienHariIniRanap;

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
  TFDaftarDataPasienRanap = class(TForm)
    pnlTegah: TPanel;
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    lblTanggal: TLabel;
    pnlKeluar: TPanel;
    dtpTglHariIni: TDateTimePicker;
    lblNoRmNama: TLabel;
    edtNoRmNama: TEdit;
    btnKartuBerobat: TcxButton;
    btnGelang: TcxButton;
    btnLabel2x1: TcxButton;
    btnBatalPasien: TcxButton;
    btnGantiKamar: TcxButton;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1noRekamedis: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1nmPasien: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tempatLahir: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tglLahir: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jenisKelamin: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1alamat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1provinsi: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1noDaftar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tglDaftar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tglPulang: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1asalPasien: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1carabayar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1penjamin: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1rawatInap: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1kelas: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1noKamar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1noBed: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1statusKeluar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure pnlKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNoRmNamaChange(Sender: TObject);
    procedure edtNoRmNamaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnBatalPasienClick(Sender: TObject);
    procedure dtpTglHariIniChange(Sender: TObject);
    procedure btnGantiKamarClick(Sender: TObject);
    procedure dtpTglHariIniKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tampilpasienhariini;
  end;

var
  FDaftarDataPasienRanap: TFDaftarDataPasienRanap;
  tanggal,tanggal1:String;

implementation

uses UDataSImrs,ADODB,UGantiKamarRawatInap, DateUtils;

{$R *.dfm}

procedure TFDaftarDataPasienRanap.tampilpasienhariini;
begin
  tanggal := FormatDateTime('yyyy-MM-dd',dtpTglHariIni.Date);
  tanggal1 := FormatDateTime('yyyy-MM-dd',IncDay(dtpTglHariIni.Date,1));
  with DataSimrs.qryvw_pasienrawatinap do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM vw_pasienrawatinap WHERE tglDaftar BETWEEN "'+tanggal+'" AND "'+tanggal1+'"';
    Open;
  end;
end;

procedure TFDaftarDataPasienRanap.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDaftarDataPasienRanap.FormShow(Sender: TObject);
begin
  dtpTglHariIni.Date := Now;
  tampilpasienhariini;
end;

procedure TFDaftarDataPasienRanap.edtNoRmNamaChange(Sender: TObject);
begin
if (edtNoRmNama.Text='') then
    begin
      tampilpasienhariini;
    end
    else
    begin
      with DataSimrs.qryvw_pasienrawatinap do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT * FROM vw_pasienrawatinap WHERE tglDaftar BETWEEN "'+tanggal+'" AND "'+tanggal1+'" and (noRekamedis LIKE "%'+edtNoRmNama.Text+'%" OR nmPasien LIKE "%'+edtNoRmNama.Text+'%") ';
        Open;
      end;
    end;
end;

procedure TFDaftarDataPasienRanap.edtNoRmNamaClick(Sender: TObject);
begin
  edtNoRmNama.Text := '';
end;

procedure TFDaftarDataPasienRanap.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key =#27 then Close;
end;

procedure TFDaftarDataPasienRanap.btnBatalPasienClick(Sender: TObject);
var
  NODaftar,noDaftarRanap,kdTarifKamar:String;
begin
if DataSimrs.qryvw_pasienrawatinap.RecordCount<=0 then
   MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0) else
   begin
    if MessageDlg('Yakin Membatalkan Pasien Yang Sudah Terdaftar, Dengan No RM, Nama "'+DataSimrs.qryvw_pasienrawatinap['noRekamedis']+','+DataSimrs.qryvw_pasienrawatinap['nmPasien']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      noDaftarRanap := DataSimrs.qryvw_pasienrawatinap.FieldByName('noDaftarRawatInap').AsString;
      NODaftar := DataSimrs.qryvw_pasienrawatinap.FieldByName('noDaftar').AsString;
      kdTarifKamar := DataSimrs.qryvw_pasienrawatinap.FieldByName('kdTarifKelasKmr').AsString;
      with DataSimrs.qryt_tindakanpasienranap do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_tindakanpasienranap where noDaftarRawatInap="'+noDaftarRanap+'"';
        Open;
      end;
      if DataSimrs.qryt_tindakanpasienranap.RecordCount >= 1 then
         MessageDlg('Pasien Sudah Mendapatkan Pelayanan',mtWarning,[mbok],0)
      else
      begin
        /// update tabel status rawat inap

        with DataSimrs.qryvw_datarawatinap do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'update t_tarifkelaskamar set kdStatusBed="st6" where kdTarifKelasKmr="'+kdTarifKamar+'" ';
          ExecSQL;
          SQL.Text := 'select * from t_tarifkelaskamar';
          open;
        end;
        
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

        with DataSimrs.qryt_registrasirawatinap do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'update t_registrasirawatinap set tglKeluarRawatInap="'+FormatDateTime('yyyy-MM-dd HH:mm:ss',Now)+'",'+
                     'jumlahHariMenginap="'+IntToStr(0)+'",totalMenginap="'+FloatToStr(0)+'" where noDaftarRawatInap="'+noDaftarRanap+'"';
         ExecSQL;
         SQL.Text := 'select * from t_registrasirawatinap';
         Open;
        end;
        
        MessageDlg('Berhasil Di Batalkan...!',mtInformation,[mbok],0);
      end
    end
    else Abort;
   end;
end;

procedure TFDaftarDataPasienRanap.dtpTglHariIniChange(Sender: TObject);
begin
 tampilpasienhariini;
end;

procedure TFDaftarDataPasienRanap.btnGantiKamarClick(Sender: TObject);
var
  noDaftar:String;
begin
IF DataSimrs.qryvw_pasienrawatinap.RecordCount>= 1 then
  begin
    noDaftar := DataSimrs.qryvw_pasienrawatinap.Fieldbyname('noDaftarRawatInap').AsString;
    with DataSimrs.qryvw_pasienrawatinap do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from vw_pasienrawatinap where noDaftarRawatInap="'+noDaftar+'"';
      Open;
    end;
    with FGantiKamarRawatInap do
    begin
      lbl1.Caption :=  noDaftar;
      edtKdRawatInap.Text := DataSimrs.qryvw_pasienrawatinap.Fieldbyname('kdRawatInap').AsString;
      edtKdTarifKamar.Text := DataSimrs.qryvw_pasienrawatinap.Fieldbyname('kdTarifKelasKmr').AsString;
      edtRawatInap.Text := DataSimrs.qryvw_pasienrawatinap.Fieldbyname('rawatInap').AsString;
      edtNoKamar.Text := DataSimrs.qryvw_pasienrawatinap.Fieldbyname('noKamar').AsString;
      edtNoBed.Text := DataSimrs.qryvw_pasienrawatinap.Fieldbyname('noBed').AsString;
      edtKelas.Text := DataSimrs.qryvw_pasienrawatinap.Fieldbyname('kelas').AsString;
      edtTarif.Text := DataSimrs.qryvw_pasienrawatinap.Fieldbyname('tarifKmr').AsString;
      edtStatusKamar.Text := DataSimrs.qryvw_pasienrawatinap.Fieldbyname('statusBed').AsString;
      Show;
    end;
  end
  else
  ShowMessage('Data Tidak Di Temukan...!');
end;

procedure TFDaftarDataPasienRanap.dtpTglHariIniKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  Key:=#0;
  tampilpasienhariini;
end;

end.
