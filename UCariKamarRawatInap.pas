unit UCariKamarRawatInap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, ExtCtrls, StdCtrls;

type
  TFCariKamarRawatInap = class(TForm)
    pnlTengah: TPanel;
    dbgrdh1: TDBGridEh;
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    lblCariKamar: TLabel;
    edtCari: TEdit;
    btnPilih: TButton;
    btnRefreshData: TButton;
    procedure edtCariChange(Sender: TObject);
    procedure btnPilihClick(Sender: TObject);
    procedure dbgrdh1CellClick(Column: TColumnEh);
    procedure FormShow(Sender: TObject);
    procedure btnRefreshDataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCariKamarRawatInap: TFCariKamarRawatInap;

implementation

{$R *.dfm}

uses UDataSImrs,UPendaftaranPasienIgdRanap, ADODB, DB;

procedure TFCariKamarRawatInap.edtCariChange(Sender: TObject);
begin
if edtCari.Text = '' then
  begin
    with DataSimrs.qryvw_datarawatinap do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from vw_datarawatinap ';
      Open;
    end;
  end
  else
  begin
   with DataSimrs.qryvw_datarawatinap do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from vw_datarawatinap where rawatInap like "'+edtCari.Text+'%"';
      Open;
    end;
  end;
end;

procedure TFCariKamarRawatInap.btnPilihClick(Sender: TObject);
begin
 if DataSimrs.qryvw_datarawatinap.RecordCount >= 1 then
 begin
  FPendaftaranPasienRawatInap.edtRawatInap.Text := DataSimrs.qryvw_datarawatinap['rawatInap'];
  FPendaftaranPasienRawatInap.edtKdRawatInap.Text := DataSimrs.qryvw_datarawatinap['kdRawatInap']; FPendaftaranPasienRawatInap.edtKdTarifKamar.Text := DataSimrs.qryvw_datarawatinap['kdTarifKelasKmr'];
  FPendaftaranPasienRawatInap.edtNoKamar.Text := DataSimrs.qryvw_datarawatinap['noKamar']; FPendaftaranPasienRawatInap.edtNoBed.Text := DataSimrs.qryvw_datarawatinap['noBed'];
  FPendaftaranPasienRawatInap.edtKelas.Text := DataSimrs.qryvw_datarawatinap['kelas']; FPendaftaranPasienRawatInap.edtTarif.Text := DataSimrs.qryvw_datarawatinap['tarifKmr'];
  FPendaftaranPasienRawatInap.edtStatusKamar.Text := DataSimrs.qryvw_datarawatinap['statusBed'];
  with DataSimrs.qryvw_datarawatinap do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from vw_datarawatinap';
    Open;
  end;
  Close;
  FPendaftaranPasienRawatInap.cbbDokter.SetFocus;
 end
 else
  ShowMessage('Data Tidak Di Temukan...!');
end;

procedure TFCariKamarRawatInap.dbgrdh1CellClick(Column: TColumnEh);
begin
if DataSimrs.qryvw_datarawatinap.RecordCount >= 1 then
 begin
  FPendaftaranPasienRawatInap.edtRawatInap.Text := DataSimrs.qryvw_datarawatinap['rawatInap'];
  FPendaftaranPasienRawatInap.edtKdRawatInap.Text := DataSimrs.qryvw_datarawatinap['kdRawatInap']; FPendaftaranPasienRawatInap.edtKdTarifKamar.Text := DataSimrs.qryvw_datarawatinap['kdTarifKelasKmr'];
  FPendaftaranPasienRawatInap.edtNoKamar.Text := DataSimrs.qryvw_datarawatinap['noKamar']; FPendaftaranPasienRawatInap.edtNoBed.Text := DataSimrs.qryvw_datarawatinap['noBed'];
  FPendaftaranPasienRawatInap.edtKelas.Text := DataSimrs.qryvw_datarawatinap['kelas']; FPendaftaranPasienRawatInap.edtTarif.Text := DataSimrs.qryvw_datarawatinap['tarifKmr'];
  FPendaftaranPasienRawatInap.edtStatusKamar.Text := DataSimrs.qryvw_datarawatinap['statusBed'];
  with DataSimrs.qryvw_datarawatinap do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from vw_datarawatinap';
    Open;
  end;
  Close;
  FPendaftaranPasienRawatInap.cbbDokter.SetFocus;
 end
 else
  ShowMessage('Data Tidak Di Temukan...!');
end;

procedure TFCariKamarRawatInap.FormShow(Sender: TObject);
begin
 with DataSimrs.qryvw_datarawatinap do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from vw_datarawatinap';
    Open;
  end;
  edtCari.Text := '';
end;

procedure TFCariKamarRawatInap.btnRefreshDataClick(Sender: TObject);
begin
  with DataSimrs.qryvw_datarawatinap do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from vw_datarawatinap';
    Open;
  end;
end;

end.
