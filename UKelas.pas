unit UKelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls;

type
  TFKelas = class(TForm)
    dbgrdhKelas: TDBGridEh;
    grpPilih: TGroupBox;
    btnPilih: TButton;
    procedure btnPilihClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pilih;
    procedure proses;
    procedure Tampilkelas;
  end;

var
  FKelas: TFKelas;

implementation

{$R *.dfm}
uses UDataSimrs,UPendaftaranPasienIgdRanap,UGantiKamarRawatInap, ADODB, DB;

procedure TFKelas.pilih;
begin
if DataSimrs.qryKelas.RecordCount >= 1 then
  begin
     with FPendaftaranPasienRawatInap do
     begin
       edtKelas.Text := DataSimrs.qryKelas['kelas'];
     end;
     Close;
  end
  else
  Abort;
end;

procedure TFKelas.proses;
begin
if DataSimrs.qryKelas.RecordCount >= 1 then
  begin
     with FGantiKamarRawatInap do
     begin
       edtKelasGanti.Text := DataSimrs.qryKelas['kelas'];
     end;
     Close;
  end
  else
  Abort;
end;

procedure TFKelas.Tampilkelas;
begin
  with DataSimrs.qryKelas do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM t_kelas WHERE `kelas` IN("UTAMA","KELAS I","KELAS II","KELAS III","ISOLASI")';
    Open;
  end;
end;

procedure TFKelas.btnPilihClick(Sender: TObject);
begin
if btnPilih.Caption = 'PILIH' then
  pilih
  else
  proses
end;

procedure TFKelas.FormShow(Sender: TObject);
begin
  Tampilkelas;
end;

end.
