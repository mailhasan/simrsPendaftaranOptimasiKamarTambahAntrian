unit UEditPenjaminIGD;

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
  TFEditPenjaminIGD = class(TForm)
    pnlTengah: TPanel;
    grpPenjamin: TGroupBox;
    lblPenjamin: TLabel;
    lblAtasNama: TLabel;
    lblCaraBayar: TLabel;
    edtNoSep: TEdit;
    edtAtasNama: TEdit;
    cbbPenjamin: TcxLookupComboBox;
    cbbCaraBayar: TcxLookupComboBox;
    pnlBawah: TPanel;
    btnSimpan: TButton;
    pnlAtas: TPanel;
    lblNoRm: TLabel;
    pnlKeluar: TPanel;
    lblNoSEP: TLabel;
    lblNoKartu: TLabel;
    edtNoKartu: TEdit;
    procedure btnSimpanClick(Sender: TObject);
    procedure cbbCaraBayarKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPenjaminKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoKartuKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoSepKeyPress(Sender: TObject; var Key: Char);
    procedure edtAtasNamaKeyPress(Sender: TObject; var Key: Char);
    procedure pnlKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditPenjaminIGD: TFEditPenjaminIGD;

implementation

{$R *.dfm}

uses UDataSImrs,UDataDaftarPasienIgd, ADODB, DB;

procedure TFEditPenjaminIGD.btnSimpanClick(Sender: TObject);
begin
  with DataSimrs.qryt_registrasi do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'update t_registrasi set kdCaraBayar="'+cbbCaraBayar.EditValue+'",kdPenjamin="'+cbbPenjamin.EditValue+'",'+
                'noKartuPenjamin="'+edtNoKartu.Text+'",noSepPenjamin="'+edtNoSep.Text+'" where noDaftar="'+lblNoRm.Caption+'"';
    ExecSQL;
    SQL.Text := 'select noRekamedis from t_registrasi';
    Open;
  end;
  FDataDaftarPasienIgd.tampilpasienhariini;
  Close;
end;

procedure TFEditPenjaminIGD.cbbCaraBayarKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TFEditPenjaminIGD.cbbPenjaminKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  edtNoKartu.SetFocus;
end;

procedure TFEditPenjaminIGD.edtNoKartuKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  edtNoSep.SetFocus;
end;

procedure TFEditPenjaminIGD.edtNoSepKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  edtAtasNama.SetFocus;
end;

procedure TFEditPenjaminIGD.edtAtasNamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  btnSimpan.SetFocus;
end;

procedure TFEditPenjaminIGD.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

end.
