unit UEditPenjaminDataPasien;

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
  dxSkinXmas2008Blue, StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls;

type
  TFEditPenjaminDataPasien = class(TForm)
    pnlTengah: TPanel;
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
    pnlBawah: TPanel;
    btnSimpan: TButton;
    pnlAtas: TPanel;
    lblNoRm: TLabel;
    pnlKeluar: TPanel;
    procedure cbbCaraBayarKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPenjaminKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoKartuKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoSepKeyPress(Sender: TObject; var Key: Char);
    procedure edtAtasNamaKeyPress(Sender: TObject; var Key: Char);
    procedure btnSimpanClick(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditPenjaminDataPasien: TFEditPenjaminDataPasien;

implementation

{$R *.dfm}
uses UDataSImrs;

procedure TFEditPenjaminDataPasien.cbbCaraBayarKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
  if Key=#13 then
  begin
    key := #0;
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
end;

procedure TFEditPenjaminDataPasien.cbbPenjaminKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  Key:=#0;
  edtNoKartu.SetFocus;
  end
end;

procedure TFEditPenjaminDataPasien.edtNoKartuKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  Key:=#0;
  edtNoSep.SetFocus;
  end
end;

procedure TFEditPenjaminDataPasien.edtNoSepKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  Key:=#0;
  edtAtasNama.SetFocus
  end;
end;

procedure TFEditPenjaminDataPasien.edtAtasNamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
   Key:=#0;
   btnSimpan.SetFocus;
  end;
end;

procedure TFEditPenjaminDataPasien.btnSimpanClick(Sender: TObject);
begin
with DataSimrs.qryVwPasien do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'update t_pasien set caraBayar="'+cbbCaraBayar.Text+'",penjamin="'+cbbPenjamin.Text+'",'+
              'noKartuPenjamin="'+edtNoKartu.Text+'",noSepPenjamin="'+edtNoSep.Text+'",'+
              'atasNamaPenjamin="'+edtAtasNama.Text+'" where noRekamedis="'+lblNoRm.Caption+'"';
 ExecSQL;
 SQL.Text := 'select noRekamedis from t_pasien';
 Open;
end;
 MessageDlg('Data Berhasil di Ubah...!',mtInformation,[mbok],0);
 Close;
end;

procedure TFEditPenjaminDataPasien.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

end.
