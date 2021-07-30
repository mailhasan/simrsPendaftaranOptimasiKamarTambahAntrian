unit URuangPinere;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFRuangPinere = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnDAFTAR: TButton;
    btnBATAL: TButton;
    lblNODAFTAR: TLabel;
    lblNODAFTARIGD: TLabel;
    lblNORM: TLabel;
    lblNAMA: TLabel;
    lblTTL: TLabel;
    lblALAMAT: TLabel;
    edtNODAFTAR: TEdit;
    edtNODAFTARIGD: TEdit;
    edtNORM: TEdit;
    edtNAMA: TEdit;
    edtTTL: TEdit;
    mmoALAMAT: TMemo;
    procedure btnBATALClick(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
    procedure btnDAFTARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRuangPinere: TFRuangPinere;

implementation

{$R *.dfm}

uses UDataDaftarPasienIgd,UDataSimrs, ADODB, DB;

procedure TFRuangPinere.btnBATALClick(Sender: TObject);
begin
  FDataDaftarPasienIgd.tampilpasienhariini;
  Close;
end;

procedure TFRuangPinere.pnlKeluarClick(Sender: TObject);
begin
  FDataDaftarPasienIgd.tampilpasienhariini;
  Close;
end;

procedure TFRuangPinere.btnDAFTARClick(Sender: TObject);
begin
  with DataSimrs.qryt_registrasirawatjalan do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'update t_registrasirawatjalan set kdUnit="4002" where noRegistrasiRawatJalan="'+edtNODAFTARIGD.Text+'"';
    ExecSQL;
    SQL.Text := 'select * from t_registrasirawatjalan';
    Open;
  end;
  MessageDlg('Pasien Berhasil Di Pindah Ke Ruang Pinere...!',mtInformation,[mbOK],0);
  FDataDaftarPasienIgd.tampilpasienhariini;
end;

end.
