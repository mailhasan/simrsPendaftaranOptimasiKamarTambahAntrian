unit USettingPrinter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, Menus, StdCtrls, cxButtons,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit,printers, Winspool, ExtDlgs,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFSettingPrinter = class(TForm)
    pnlTengah: TPanel;
    cxlblNamaKomputer: TcxLabel;
    cxlblPrinterKartu: TcxLabel;
    cxlblPrinterGelang: TcxLabel;
    cxlblPrinterLabel: TcxLabel;
    cxlblPinterKarcis: TcxLabel;
    cxtxtdtNamaKomputer: TcxTextEdit;
    cbbPrinterKartu: TComboBox;
    cbbPrinterGelang: TComboBox;
    cbbPrinterLabel: TComboBox;
    cbbPrinterKarcis: TComboBox;
    pnlBawah: TPanel;
    btnSimpan: TcxButton;
    pnlAtas: TPanel;
    cxlblPrinterGelangPerempuan: TcxLabel;
    cbbPrinterGelangPerempuan: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awal;
  end;

var
  FSettingPrinter: TFSettingPrinter;

implementation

{$R *.dfm}

uses UDataSimrs, ADODB, DB;

// Cek Nama Komputer
function GetComputerNameFromWindows: string;
var
  iLen: Cardinal;
begin
  iLen := MAX_COMPUTERNAME_LENGTH + 1;
  Result := StringOfChar(#0, iLen);
  GetComputerName(PChar(Result), iLen);
  SetLength(Result, iLen);
end;

// Cek User Komputer
function GetUserFromWindows: string;
var
  iLen: Cardinal;
begin
  iLen := 256;
  Result := StringOfChar(#0, iLen);
  GetUserName(PChar(Result), iLen);
  SetLength(Result, iLen);
end;

/// menampilkan printer yang terinstal di pc
function GetCurrentPrinterHandle: THandle;
var
  Device, Driver, Port: array[0..255] of Char;
  hDeviceMode: THandle;
begin
  Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
  if not OpenPrinter(@Device, Result, nil) then
    RaiseLastWin32Error;
end;

function SavePChar(p: PChar): PChar;
const
  error: PChar = 'Nil';
begin
  if not Assigned(p) then
    Result := error
  else
    Result := p;
end;

procedure TFSettingPrinter.awal;
begin
  cxtxtdtNamaKomputer.Text := GetComputerNameFromWindows;
  if DataSimrs.qryt_komputer.FieldByName('namaKomputer').AsString = cxtxtdtNamaKomputer.Text then
    begin
      cxtxtdtNamaKomputer.Text :=  DataSimrs.qryt_komputer.FieldByName('namaKomputer').AsString;
      cbbPrinterKartu.Text := DataSimrs.qryt_komputer.FieldByName('printerKartu').AsString;
      cbbPrinterGelang.Text := DataSimrs.qryt_komputer.FieldByName('printerGelang').AsString;
      cbbPrinterLabel.Text := DataSimrs.qryt_komputer.FieldByName('printerLabel').AsString;
      cbbPrinterKarcis.Text := DataSimrs.qryt_komputer.FieldByName('printerKarcis').AsString;
      cbbPrinterGelangPerempuan.Text := DataSimrs.qryt_komputer.FieldByName('PrinterGelangPerempuan').AsString;
    end
    else
    begin
      cxtxtdtNamaKomputer.Text :=  GetComputerNameFromWindows;
      cbbPrinterKartu.Text := '';
      cbbPrinterGelang.Text := '';
      cbbPrinterLabel.Text := '';
      cbbPrinterKarcis.Text := '';
      cbbPrinterGelangPerempuan.Text := '';
    end;
end;


procedure TFSettingPrinter.FormShow(Sender: TObject);
begin
  /// menampilkan procedure awal
  awal;
  /// menampilkan procedure printer pada combo box
  cbbPrinterKartu.Items.Assign(Printer.Printers);
  cbbPrinterGelang.Items.Assign(Printer.Printers);
  cbbPrinterLabel.Items.Assign(Printer.Printers);
  cbbPrinterKarcis.Items.Assign(Printer.Printers);
  cbbPrinterGelangPerempuan.Items.Assign(printer.Printers);
end;

procedure TFSettingPrinter.btnSimpanClick(Sender: TObject);
begin
  if (cxtxtdtNamaKomputer.Text='') then
    MessageDlg('Data Harus Di Isi Lengkap...!',mtInformation,[mbok],0)
    else
    begin
     if DataSimrs.qryt_komputer.Locate('namaKomputer',cxtxtdtNamaKomputer.Text,[]) then
        begin
          with DataSimrs.qryt_komputer do
          begin
          Locate('namaKomputer',cxtxtdtNamaKomputer.Text,[]);
          Edit;
           FieldByName('namaKomputer').AsString := GetComputerNameFromWindows;
           FieldByName('printerKartu').AsString := cbbPrinterKartu.Text;
           FieldByName('printerGelang').AsString := cbbPrinterGelang.Text;
           FieldByName('printerLabel').AsString := cbbPrinterLabel.Text;
           FieldByName('printerKarcis').AsString := cbbPrinterKarcis.Text;
           FieldByName('PrinterGelangPerempuan').AsString := cbbPrinterGelangPerempuan.Text;
          Post;
         end;
         MessageDlg('Data Berhasil disimpan!',mtInformation,[mbok],0);

        end
        else
        begin
          with DataSimrs.qryt_komputer do
          begin
           Append;
           FieldByName('namaKomputer').AsString := GetComputerNameFromWindows;
           FieldByName('printerKartu').AsString := cbbPrinterKartu.Text;
           FieldByName('printerGelang').AsString := cbbPrinterGelang.Text;
           FieldByName('printerLabel').AsString := cbbPrinterLabel.Text;
           FieldByName('printerKarcis').AsString := cbbPrinterKarcis.Text;
           FieldByName('PrinterGelangPerempuan').AsString := cbbPrinterGelangPerempuan.Text;
           Post;
          end;
          MessageDlg('Data Berhasil disimpan!',mtInformation,[mbok],0);
        end;

    end;
end;

end.
