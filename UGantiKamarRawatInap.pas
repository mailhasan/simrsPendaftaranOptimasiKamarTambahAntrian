unit UGantiKamarRawatInap;

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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Menus, cxButtons;

type
  TFGantiKamarRawatInap = class(TForm)
    pnlTegah: TPanel;
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    grpDetailKamar: TGroupBox;
    lblRawatInap: TLabel;
    lblKamar: TLabel;
    lblKelas: TLabel;
    lbl4: TLabel;
    lblStatusKamar: TLabel;
    edtRawatInap: TEdit;
    edtNoKamar: TEdit;
    edtKelas: TEdit;
    edtTarif: TEdit;
    edtKdRawatInap: TEdit;
    edtNoBed: TEdit;
    edtKdTarifKamar: TEdit;
    edtStatusKamar: TEdit;
    grpCariRawatInap: TGroupBox;
    cbbKamar: TcxLookupComboBox;
    grpGanti: TGroupBox;
    lblRawatInapGanti: TLabel;
    lblRanapGanti: TLabel;
    lblKamarGanti: TLabel;
    lblNoKamarGanti: TLabel;
    lblBedGanti: TLabel;
    edtRawatInapGanti: TEdit;
    edtNoKamarGanti1: TEdit;
    edtKelasGanti: TEdit;
    edtTarifGanti: TEdit;
    edtKdRawatInapGanti: TEdit;
    edtBedGanti: TEdit;
    edtKdTarifGanti: TEdit;
    edtStatusKamarGanti: TEdit;
    btnGantiDataKamar: TcxButton;
    lbl1: TLabel;
    btnKelas: TButton;
    procedure pnlKeluarClick(Sender: TObject);
    procedure cbbKamarKeyPress(Sender: TObject; var Key: Char);
    procedure btnGantiDataKamarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKelasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGantiKamarRawatInap: TFGantiKamarRawatInap;

implementation

uses UDataSImrs,UDaftarDataPasienHariIniRanap,UKelas, ADODB, DB, DateUtils;

{$R *.dfm}

procedure TFGantiKamarRawatInap.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFGantiKamarRawatInap.cbbKamarKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    if cbbKamar.Text = '' then
      ShowMessage('Data Tidak Boleh Kosong...!')
    else
    begin
      ///tampil detail rawat inap
         with DataSimrs.qryvw_datarawatinap do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from vw_datarawatinap where kdTarifKelasKmr="'+cbbKamar.EditValue+'"';
          Open;
        end;

        ///ambil data rawat inap
        if DataSimrs.qryvw_datarawatinap.RecordCount >= 1 then
        begin
         edtRawatInapGanti.Text := DataSimrs.qryvw_datarawatinap['rawatInap'];
         edtKdRawatInapGanti.Text := DataSimrs.qryvw_datarawatinap['kdRawatInap']; edtKdTarifGanti.Text := DataSimrs.qryvw_datarawatinap['kdTarifKelasKmr'];
         edtNoKamarGanti1.Text := DataSimrs.qryvw_datarawatinap['noKamar']; edtBedGanti.Text := DataSimrs.qryvw_datarawatinap['noBed'];
         edtKelasGanti.Text := DataSimrs.qryvw_datarawatinap['kelas']; edtTarifGanti.Text := DataSimrs.qryvw_datarawatinap['tarifKmr'];
         edtStatusKamarGanti.Text := DataSimrs.qryvw_datarawatinap['statusBed'];
         with DataSimrs.qryvw_datarawatinap do
         begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from vw_datarawatinap';
          Open;
         end;
         btnGantiDataKamar.SetFocus;
        end
        else
        ShowMessage('Data Tidak Di Temukan...!');

    end
  end;
end;

procedure TFGantiKamarRawatInap.btnGantiDataKamarClick(Sender: TObject);
var
  noDaftarRanap,tglDaftar,jamSelisih:String;
  jamDaftar,jamSekarang:TDateTime;
  sec, jam, menit, detik : word;
  h, m, s : word;
  inc : word;
  Selisih : String;
  Itime : TTime;
begin
/// pengujian status kamar kosong
if edtStatusKamarGanti.Text = '' then
  begin
    ShowMessage('Status Kamar Ganti Tidak Kosong...!');
  end
  else
  begin
    /// pengujian status kamar
    if (edtStatusKamarGanti.Text = 'Dipesan Pasien') or (edtStatusKamarGanti.Text='Rusak') or
            (edtStatusKamarGanti.Text='Diperbaiki') or (edtStatusKamarGanti.Text='Dibersihkan')
            or (edtStatusKamarGanti.Text='Ditempati Pasien') then
            MessageDlg('Silahkan Pilih Status Kamar Yang Kosong...!',mtWarning,[mbok],0)
    else

    begin
         /// membaca data kamar di database yang statusnya di tempati
         with DataSimrs.qryvw_datarawatinap do
         begin
           Close;
           SQL.Clear;
           SQL.Text := 'select * from vw_datarawatinap where kdTarifKelasKmr="'+edtKdRawatInapGanti.Text+'" AND statusBed="Ditempati Pasien" ';
           Open;
         end;

         /// pengujian data kamar yang di tempati ada di database
         if (DataSimrs.qryvw_datarawatinap.FieldByName('kdTarifKelasKmr').AsString = edtKdRawatInapGanti.Text)
            and (DataSimrs.qryvw_datarawatinap.FieldByName('statusBed').AsString ='Ditempati Pasien') then
         begin
          MessageDlg('Kamar Sudah Lebih Dahulu Ditempati Pasien..!!',mtWarning,[mbok],0);

          /// refresh data kamar rawat inap
          with DataSimrs.qryvw_datarawatinap do
           begin
            Close;
            SQL.Clear;
            SQL.Text := 'select * from vw_datarawatinap';
            Open;
           end;
            cbbKamar.SetFocus;
         end
         else
         begin
          /// pengujian dapat pelayanan
          with DataSimrs.qryt_registrasirawatinap do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'SELECT * FROM t_tindakanpasienranap where noDaftarRawatInap="'+lbl1.Caption+'"';
            Open;
          end;
          if DataSimrs.qryt_registrasirawatinap['noDaftarRawatInap'] = lbl1.Caption then
            MessageDlg('Pasien Sudah Mendapatkan Pelayanan Di Ruangan Silahkan Pindah Pasien Dari Ruangan',mtInformation,[mbOK],0)
          else
          begin

            //// query pengujian lebih dari 3 jam
            with DataSimrs.qryPasienRanapLebih3jam do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'SELECT '+
                              'noDaftarRawatInap,'+
                              'tglMasukRawatInap,'+
                              'DATE(tglMasukRawatInap) AS tanggal,'+
                              'TIME(tglMasukRawatInap) AS jam FROM t_registrasirawatinap where noDaftarRawatInap="'+lbl1.Caption+'"';
              Open;
            end;

            noDaftarRanap := DataSimrs.qryPasienRanapLebih3jam['noDaftarRawatInap'];
            tglDaftar := FormatDateTime('yyyy-MM-dd',DataSimrs.qryPasienRanapLebih3jam['tanggal']);
            jamDaftar := StrToTime(FormatDateTime('t',DataSimrs.qryPasienRanapLebih3jam['jam']));
            jamSekarang := Now;
            jamSelisih := TimeToStr(jamDaftar-jamSekarang);
            jamDaftar := StrToTime(jamSelisih);

            h := HourOf(jamDaftar);
            m := MinuteOf(jamDaftar);
            s := SecondOf(jamDaftar);
            inc := (h*sqr(60)+(m*60)+s);
            //
            Itime := Now();
            Itime := IncSecond(Itime,inc);
            //
            sec := SecondsBetween(Now(),Itime);
            jam := sec div 3600;
            menit := (sec mod 3600) div 60;
            detik := (sec mod 3600) mod 60;
            //

            //ShowMessage(tglDaftar + IntToStr(jam));
            if (noDaftarRanap=lbl1.Caption) and (tglDaftar=FormatDateTime('yyyy-MM-dd',Now)) and (IntToStr(jam)>IntToStr(3)) then
                MessageDlg('Data Kamar Pasien tidak bisa di ganti, pasien Telah Terdaftar 4 jam yang lalu',mtWarning,[mbOK],0)
            else
            /// update di tabel t_registrasirawatinap
            begin

            with DataSimrs.qryt_registrasirawatinap do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'update t_registrasirawatinap set kdTarifKelasKmr="'+edtKdTarifGanti.Text+'",kdRawatInap="'+edtKdRawatInapGanti.Text+'",'+
                          'rawatInap="'+edtRawatInapGanti.Text+'",noKamar="'+edtNoKamarGanti1.Text+'",noBed="'+edtBedGanti.Text+'",kelas="'+edtKelasGanti.Text+'",'+
                          'tarifKmr="'+edtTarifGanti.Text+'" where noDaftarRawatInap="'+lbl1.Caption+'"';
              ExecSQL;
              SQL.Text := 'select * from t_registrasirawatinap';
              Open;
            end;

            /// update kamar sebelumnya
            with DataSimrs.qryvw_datarawatinap do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'update t_tarifkelaskamar set kdStatusBed="st6" where kdTarifKelasKmr="'+edtKdTarifKamar.Text+'" ';
              ExecSQL;
              SQL.Text := 'select * from t_tarifkelaskamar';
              open;
            end;

            /// update kamar ganti
            with DataSimrs.qryvw_datarawatinap do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'update t_tarifkelaskamar set kdStatusBed="st5" where kdTarifKelasKmr="'+edtKdTarifGanti.Text+'" ';
              ExecSQL;
              SQL.Text := 'select * from t_tarifkelaskamar';
              open;
            end;

            MessageDlg('Kamar Berhasil Di Ganti..!!',mtInformation,[mbok],0);

            FDaftarDataPasienRanap.tampilpasienhariini;
            end;

          end;
          end;
    end;
  end;
end;

procedure TFGantiKamarRawatInap.FormShow(Sender: TObject);
begin
   with DataSimrs.qryvw_datarawatinap do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from vw_datarawatinap';
    Open;
   end;
   edtRawatInapGanti.Text := '';
   edtKdRawatInapGanti.Text := ''; edtKdTarifGanti.Text := '';
   edtNoKamarGanti1.Text := ''; edtBedGanti.Text := '';
   edtKelasGanti.Text := ''; edtTarifGanti.Text := '';
   edtStatusKamarGanti.Text := '';
end;

procedure TFGantiKamarRawatInap.btnKelasClick(Sender: TObject);
begin
with FKelas  do
begin
btnPilih.Caption := 'PROSES';
Show;
end;
end;

end.
