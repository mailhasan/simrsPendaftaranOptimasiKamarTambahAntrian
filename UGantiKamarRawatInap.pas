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

uses UDataSImrs,UDaftarDataPasienHariIniRanap,UKelas, ADODB, DB;

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
begin
if edtStatusKamarGanti.Text = '' then
  begin
    ShowMessage('Status Kamar Ganti Tidak Kosong...!');
  end
  else
  begin
    if (edtStatusKamarGanti.Text = 'Dipesan Pasien') or (edtStatusKamarGanti.Text='Rusak') or
            (edtStatusKamarGanti.Text='Diperbaiki') or (edtStatusKamarGanti.Text='Dibersihkan')
            or (edtStatusKamarGanti.Text='Ditempati Pasien') then
            MessageDlg('Silahkan Pilih Status Kamar Yang Kosong...!',mtWarning,[mbok],0)
    else

    begin
        with DataSimrs.qryvw_datarawatinap do
         begin
           Close;
           SQL.Clear;
           SQL.Text := 'select * from vw_datarawatinap where kdTarifKelasKmr="'+edtKdRawatInapGanti.Text+'" AND statusBed="Ditempati Pasien" ';
           Open;
         end;
         
         if (DataSimrs.qryvw_datarawatinap.FieldByName('kdTarifKelasKmr').AsString = edtKdRawatInapGanti.Text)
            and (DataSimrs.qryvw_datarawatinap.FieldByName('statusBed').AsString ='Ditempati Pasien') then
         begin
          MessageDlg('Kamar Sudah Lebih Dahulu Ditempati Pasien..!!',mtWarning,[mbok],0);
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
