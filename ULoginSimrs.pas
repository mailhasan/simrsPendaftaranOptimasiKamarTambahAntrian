unit ULoginSimrs;

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
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, frxpngimage, cxImage,
  ExtCtrls;

type
  TFLoginSimrs = class(TForm)
    pnlTengah1: TPanel;
    lblUsername: TLabel;
    lblPassword: TLabel;
    lblLevel: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    cbbLevel: TComboBox;
    img1: TcxImage;
    pnlTengah: TPanel;
    lblLogin: TLabel;
    pnlBawah: TPanel;
    btnLogin: TcxButton;
    btnBatal: TcxButton;
    procedure btnLoginClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtUsernameKeyPress(Sender: TObject; var Key: Char);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure cbbLevelKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLoginSimrs: TFLoginSimrs;

implementation

{$R *.dfm}
uses UDataSimrs,UPendaftaran,printers;

function GetComputerNameFromWindows: string;
var
  iLen: Cardinal;
begin
  iLen := MAX_COMPUTERNAME_LENGTH + 1;
  Result := StringOfChar(#0, iLen);
  GetComputerName(PChar(Result), iLen);
  SetLength(Result, iLen);
end;

procedure TFLoginSimrs.btnLoginClick(Sender: TObject);
begin
if (edtUsername.Text='') or (edtPassword.Text='') then
    MessageDlg('Data Harus Di Isi Lengkap...!',mtWarning,[mbok],0)
else
begin
  with DataSimrs.qryt_pemakai do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_pemakai where username="'+edtUsername.Text+'" and password="'+edtPassword.Text+'"';
    Open;
  end;
  if (edtUsername.Text = DataSimrs.qryt_pemakai.FieldByName('username').AsString) or
     (edtPassword.Text = DataSimrs.qryt_pemakai.FieldByName('password').AsString) then
  begin
    with DataSimrs.qryt_aksesmenu do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_aksesmenu where (username="'+edtUsername.Text+'") AND (instalasi="'+(cbbLevel.Text)+'")';
      Open;
    end;
    if (edtUsername.Text = DataSimrs.qryt_aksesmenu.FieldByName('username').AsString) and
       (DataSimrs.qryt_aksesmenu.FieldByName('instalasi').AsString = 'pendaftaran')
    then
    begin
       FPendaftaran.Show;
       FPendaftaran.statSimrs.Panels[0].Text := edtUsername.Text;
       FPendaftaran.statSimrs.Panels[1].Text := cbbLevel.Text;
       FPendaftaran.statSimrs.Panels[2].Text := GetComputerNameFromWindows;
       FPendaftaran.statSimrs.Panels[3].Text := DataSimrs.qryt_pemakai['namaUser']
    end

  end
  else
    ShowMessage('salah');
end
end;

procedure TFLoginSimrs.btnBatalClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFLoginSimrs.FormShow(Sender: TObject);
begin
  cbbLevel.ItemIndex := 1;
end;

procedure TFLoginSimrs.edtUsernameKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtPassword.SetFocus;
  end;
end;

procedure TFLoginSimrs.edtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    cbbLevel.SetFocus;
  end;
end;

procedure TFLoginSimrs.cbbLevelKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    btnLogin.SetFocus;
  end;
end;

end.
