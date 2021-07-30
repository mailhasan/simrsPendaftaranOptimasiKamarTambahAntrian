unit ULinkAppLainya;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls;

type
  TFLinkAppLainya = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    btnSimpan: TcxButton;
    pnlTENGAH: TPanel;
    lblKARTU: TLabel;
    lblGELANG: TLabel;
    lblLABEL2X1: TLabel;
    lblLABELPDC: TLabel;
    lblKARCIS: TLabel;
    lblLAPORAN: TLabel;
    edtLINKKARTU: TEdit;
    edtLINKGELANG: TEdit;
    edtLINKLABEL2X1: TEdit;
    edtLINKPDC: TEdit;
    edtLINKKARCI: TEdit;
    edtLINKLAPORANPENDAFTARAN: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awal;
  end;

var
  FLinkAppLainya: TFLinkAppLainya;

implementation

{$R *.dfm}

uses UDataSimrs, ADODB, DB;

procedure TFLinkAppLainya.awal;
begin
  with DataSimrs.qryt_settinglinkapplainpendaftaran do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_settinglinkapplainpendaftaran where idsettinglinkapplainpendaftaran="1"';
    Open;
  end;
  edtLINKKARTU.Text := DataSimrs.qryt_settinglinkapplainpendaftaran['kartu'];
  edtLINKGELANG.Text := DataSimrs.qryt_settinglinkapplainpendaftaran['gelang'];
  edtLINKLABEL2X1.Text := DataSimrs.qryt_settinglinkapplainpendaftaran['label2x1'];
  edtLINKPDC.Text := DataSimrs.qryt_settinglinkapplainpendaftaran['labelpdc'];
  edtLINKKARCI.Text := DataSimrs.qryt_settinglinkapplainpendaftaran['karcis'];
  edtLINKLAPORANPENDAFTARAN.Text := DataSimrs.qryt_settinglinkapplainpendaftaran['laporanpendaftaran'];
end;

procedure TFLinkAppLainya.FormShow(Sender: TObject);
begin
  awal;
end;

procedure TFLinkAppLainya.btnSimpanClick(Sender: TObject);
begin
  with DataSimrs.qryt_settinglinkapplainpendaftaran do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'update t_settinglinkapplainpendaftaran set kartu="'+edtLINKKARTU.Text+'",'+
                'gelang="'+edtLINKGELANG.Text+'",label2x1="'+edtLINKLABEL2X1.Text+'",'+
                'labelpdc="'+edtLINKPDC.Text+'",karcis="'+edtLINKKARCI.Text+'",'+
                'laporanpendaftaran="'+edtLINKLAPORANPENDAFTARAN.Text+'" where idsettinglinkapplainpendaftaran="'+IntToStr(1)+'"';
    ExecSQL;
    SQL.Text := 'select * from t_settinglinkapplainpendaftaran';
    Open;
  end;
  MessageDlg('Data Berhasil Di Simpan...!',mtInformation,[mbOK],0);
end;

end.
