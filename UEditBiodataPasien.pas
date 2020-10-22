unit UEditBiodataPasien;

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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ComCtrls, ExtCtrls,
  Grids;

type
  TFEditBiodataPasien = class(TForm)
    pnlTegah: TPanel;
    lblNoRekamedis: TLabel;
    lblNoIdentitas: TLabel;
    lblNama: TLabel;
    lblTempatTglLahir: TLabel;
    lblUmur: TLabel;
    lblJenisKelamin: TLabel;
    lblPendidikan: TLabel;
    lblPekerjaan: TLabel;
    lblAlamat: TLabel;
    lblProvinsi: TLabel;
    lbl1: TLabel;
    lblKecamatan: TLabel;
    lblKelurahanDesa: TLabel;
    lblBahasa: TLabel;
    lblKodePos: TLabel;
    lblAgama: TLabel;
    lbl2: TLabel;
    edtNoRekamedis: TEdit;
    edtNoIdentitas: TEdit;
    edtNmLengkap: TEdit;
    edtTempatLahir: TEdit;
    dtpTglLahir: TDateTimePicker;
    edtTahun: TEdit;
    cbbJenisKelamin: TComboBox;
    cbbPendidikan: TcxLookupComboBox;
    cbbPekerjaan: TcxLookupComboBox;
    mmoAlamat: TMemo;
    cbbBahasa: TcxLookupComboBox;
    edtKodePos: TEdit;
    cbbAgama: TcxLookupComboBox;
    edtNoTelepone: TEdit;
    pnlBawah: TPanel;
    btnSimpan: TButton;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    edtKeluarahan: TEdit;
    edtKecamatan: TEdit;
    edtKabKota: TEdit;
    edtProvinsi: TEdit;
    strngrdDesa: TStringGrid;
    strngrdKecamatan: TStringGrid;
    strngrdKabKota: TStringGrid;
    strngrdProvinsi: TStringGrid;
    procedure btnSimpanClick(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
    procedure edtKeluarahanChange(Sender: TObject);
    procedure edtKeluarahanKeyPress(Sender: TObject; var Key: Char);
    procedure edtKeluarahanKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtKecamatanChange(Sender: TObject);
    procedure edtKecamatanKeyPress(Sender: TObject; var Key: Char);
    procedure edtKecamatanKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure strngrdDesaDblClick(Sender: TObject);
    procedure edtKabKotaChange(Sender: TObject);
    procedure edtKabKotaKeyPress(Sender: TObject; var Key: Char);
    procedure edtKabKotaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure strngrdKecamatanDblClick(Sender: TObject);
    procedure strngrdKabKotaDblClick(Sender: TObject);
    procedure edtProvinsiKeyPress(Sender: TObject; var Key: Char);
    procedure edtProvinsiKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure strngrdDesaKeyPress(Sender: TObject; var Key: Char);
    procedure strngrdKabKotaKeyPress(Sender: TObject; var Key: Char);
    procedure strngrdKecamatanKeyPress(Sender: TObject; var Key: Char);
    procedure strngrdProvinsiDblClick(Sender: TObject);
    procedure strngrdProvinsiKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure aturkolomDesa;
    procedure ambildataDesa;
    procedure tampildatadesa;

    procedure aturkolomKecamatan;
    procedure ambildataKecamatan;
    procedure tampildatakecamatan;

    procedure aturkolomKabKota;
    procedure ambildataKabKota;
    procedure tampildataKabKota;

    procedure aturkolomProvinsi;
    procedure ambildataProvinsi;
    procedure tampildataProvinsi;
  end;

var
  FEditBiodataPasien: TFEditBiodataPasien;

implementation

uses UDataSimrs, ADODB, DB, DateUtils;

{$R *.dfm}

procedure TFEditBiodataPasien.aturkolomDesa;
begin
  with strngrdDesa do
  begin
    ColCount :=2;
    RowCount :=2;
    FixedCols:=1;
    DefaultROwHeight:=18;

    Cells[0,0]:='No.';
    Cells[1,0]:= 'kelurahan ';

      //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=300;
  end;
end;

procedure TFEditBiodataPasien.aturkolomKecamatan;
begin
  with strngrdKecamatan do
  begin
    ColCount :=2;
    RowCount :=2;
    FixedCols:=1;
    DefaultROwHeight:=18;

    Cells[0,0]:='No.';
    Cells[1,0]:= 'KECAMATAN ';

      //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=300;
  end;
end;

procedure TFEditBiodataPasien.aturkolomKabKota;
begin
 with strngrdKabKota do
  begin
    ColCount :=2;
    RowCount :=2;
    FixedCols:=1;
    DefaultROwHeight:=18;

    Cells[0,0]:='No.';
    Cells[1,0]:= 'KABUPATEN/KOTA ';

      //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=300;
  end;
end;

procedure TFEditBiodataPasien.aturkolomProvinsi;
begin
  with strngrdProvinsi do
  begin
    ColCount :=2;
    RowCount :=2;
    FixedCols:=1;
    DefaultROwHeight:=18;

    Cells[0,0]:='No.';
    Cells[1,0]:= 'PROVINSI ';

      //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=300;
  end;
end;

procedure TFEditBiodataPasien.ambildataDesa;
begin
  with DataSimrs.qryt_allindonesia do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT DISTINCT  kelurahan FROM t_allindonesia where kelurahan like "'+edtKeluarahan.Text+'%" limit 50';
    Open;
  end;
end;

procedure TFEditBiodataPasien.ambildataKecamatan;
begin
  with DataSimrs.qryt_allindonesia do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT DISTINCT  kecamatan FROM t_allindonesia where kecamatan like "'+edtKecamatan.Text+'%"  limit 50';
    Open;
  end;
end;

procedure TFEditBiodataPasien.ambildataKabKota;
begin
  with DataSimrs.qryt_allindonesia do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT DISTINCT kabKotaNama,kabKota FROM t_allindonesia where kabKotaNama like "%'+edtKabKota.Text+'%" limit 50';
    Open;
  end;
end;

procedure TFEditBiodataPasien.ambildataProvinsi;
begin
  with DataSimrs.qryt_allindonesia do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT provinsi FROM t_allindonesia where provinsi like "%'+edtProvinsi.Text+'%"  limit 50';
    Open;
  end;
end;


procedure TFEditBiodataPasien.tampildatadesa;
var
  i:Integer;
begin
  if DataSimrs.qryt_allindonesia.RecordCount<>0 then
  begin
    strngrdDesa.RowCount := DataSimrs.qryt_allindonesia.RecordCount+1;
    for i:=0 to DataSimrs.qryt_allindonesia.RecordCount-1 do
    begin
      strngrdDesa.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdDesa.Cells[1,i+1] := DataSimrs.qryt_allindonesia.FieldByName('kelurahan').AsString;
      DataSimrs.qryt_allindonesia.Next;
    end;
  end;
end;

procedure TFEditBiodataPasien.tampildatakecamatan;
var
  i:Integer;
begin
  if DataSimrs.qryt_allindonesia.RecordCount<>0 then
  begin
    strngrdKecamatan.RowCount := DataSimrs.qryt_allindonesia.RecordCount+1;
    for i:=0 to DataSimrs.qryt_allindonesia.RecordCount-1 do
    begin
      strngrdKecamatan.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdKecamatan.Cells[1,i+1] := DataSimrs.qryt_allindonesia.FieldByName('kecamatan').AsString;
      DataSimrs.qryt_allindonesia.Next;
    end;
  end;
end;

procedure TFEditBiodataPasien.tampildataKabKota;
var
  i:Integer;
begin
  if DataSimrs.qryt_allindonesia.RecordCount<>0 then
  begin
    strngrdKabKota.RowCount := DataSimrs.qryt_allindonesia.RecordCount+1;
    for i:=0 to DataSimrs.qryt_allindonesia.RecordCount-1 do
    begin
      strngrdKabKota.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdKabKota.Cells[1,i+1] := DataSimrs.qryt_allindonesia.FieldByName('kabKota').AsString+' '+DataSimrs.qryt_allindonesia.FieldByName('kabKotaNama').AsString;
      DataSimrs.qryt_allindonesia.Next;
    end;
  end;
end;

procedure TFEditBiodataPasien.tampildataProvinsi;
var
  i:Integer;
begin
  if DataSimrs.qryt_allindonesia.RecordCount<>0 then
  begin
    strngrdProvinsi.RowCount := DataSimrs.qryt_allindonesia.RecordCount+1;
    for i:=0 to DataSimrs.qryt_allindonesia.RecordCount-1 do
    begin
      strngrdProvinsi.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdProvinsi.Cells[1,i+1] := DataSimrs.qryt_allindonesia.FieldByName('provinsi').AsString;
      DataSimrs.qryt_allindonesia.Next;
    end;
  end;
end;


procedure TFEditBiodataPasien.btnSimpanClick(Sender: TObject);
var
  tglLahir :String;
begin
if (edtNoRekamedis.Text='') or (edtTahun.Text='') or (edtTempatLahir.Text='') or (cbbJenisKelamin.Text='') or
    (cbbPendidikan.EditValue= '') or (cbbPekerjaan.EditValue='') or (mmoAlamat.Text='') or (edtProvinsi.Text='') or
    (edtKabKota.Text='') or (edtKecamatan.Text='') or (edtKeluarahan.Text='')  or
    (cbbAgama.EditValue='') then
      MessageDlg('Data Di Isi Lengkap...!!!',mtWarning,[mbok],0)
    else
    begin
      tglLahir := FormatDateTime('yyyy-MM-dd',dtpTglLahir.Date);
      with FEditBiodataPasien do
      begin
        with DataSimrs.qryVwPasien do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'update t_pasien set nmPasien="'+edtNmLengkap.Text+'",tempatLahir="'+edtTempatLahir.Text+'",'+
                      'tglLahir="'+tglLahir+'",jenisKelamin="'+cbbJenisKelamin.Text+'",'+
                      'agama="'+cbbAgama.Text+'",alamat="'+mmoAlamat.Text+'",pendidikan="'+cbbPendidikan.Text+'",'+
                      'pekerjaan="'+cbbPekerjaan.Text+'",kelurahan="'+edtKeluarahan.Text+'",kecamatan="'+edtKecamatan.Text+'",'+
                      'kabupaten="'+edtKabKota.Text+'",provinsi="'+edtProvinsi.Text+'",kdPos="'+edtKodePos.Text+'",bahasa="'+cbbBahasa.Text+'",'+
                      'noKtp="'+edtNoIdentitas.Text+'",noTelepone="'+edtNoTelepone.Text+'",noIdentitasKtp="'+edtNoIdentitas.Text+'" where noRekamedis="'+edtNoRekamedis.Text+'"';
           ExecSQL;
           //SQL.Text := 'select noRekamedis,nmPasien,tempatLahir,tglLahir,'+
                       //'jenisKelamin,agama,alamat,pekerjaan,provinsi,kdPos,noIdentitasKtp  from t_pasien';
           //Open;
        end;
          MessageDlg('Data Berhasil Di Ubah....!',mtInformation,[mbok],0);
          Close;
      end;
    end;
end;

procedure TFEditBiodataPasien.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFEditBiodataPasien.edtKeluarahanChange(Sender: TObject);
begin
{if edtKeluarahan.Text = '' then
  begin
    strngrdDesa.Visible := False
  end
  else
  begin
    strngrdDesa.Visible := True;
    aturkolomDesa; ambildataDesa; tampildatadesa;
  end;}
end;

procedure TFEditBiodataPasien.edtKeluarahanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    strngrdDesa.Visible := True;
    aturkolomDesa; ambildataDesa; tampildatadesa;
  end;
if Key =#27 then strngrdDesa.Visible := False;
end;

procedure TFEditBiodataPasien.edtKeluarahanKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_DOWN  then
   strngrdDesa.SetFocus; 
end;

procedure TFEditBiodataPasien.edtKecamatanChange(Sender: TObject);
begin
{if edtKeluarahan.Text = '' then
  begin
    strngrdKecamatan.Visible := False
  end
  else
  begin
    strngrdKecamatan.Visible := True;
    aturkolomKecamatan; ambildataKecamatan; tampildatakecamatan;
  end;}
end;

procedure TFEditBiodataPasien.edtKecamatanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    strngrdKecamatan.Visible := True;
    aturkolomKecamatan; ambildataKecamatan; tampildatakecamatan;
  end;
if Key =#27 then strngrdKecamatan.Visible:=False;
end;

procedure TFEditBiodataPasien.edtKecamatanKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_DOWN  then
   strngrdKecamatan.SetFocus; 
end;

procedure TFEditBiodataPasien.strngrdDesaDblClick(Sender: TObject);
begin
  with strngrdDesa do
    begin
      edtKeluarahan.Text := strngrdDesa.Cells[1,strngrdDesa.selection.top];
      edtKeluarahan.SetFocus;
      Visible := False;
    end;
end;

procedure TFEditBiodataPasien.edtKabKotaChange(Sender: TObject);
begin
{if edtKabKota.Text = '' then
  begin
    strngrdKabKota.Visible := False
  end
  else
  begin
    strngrdKabKota.Visible := True;
    aturkolomKabKota; ambildataKabKota; tampildataKabKota;
  end; }
end;

procedure TFEditBiodataPasien.edtKabKotaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    strngrdKabKota.Visible := True;
    aturkolomKabKota; ambildataKabKota; tampildataKabKota;
  end;
if Key =#27 then strngrdKabKota.Visible := False;
end;

procedure TFEditBiodataPasien.edtKabKotaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_DOWN  then
   strngrdKabKota.SetFocus; 
end;

procedure TFEditBiodataPasien.strngrdKecamatanDblClick(Sender: TObject);
begin
  with strngrdKecamatan do
    begin
      edtKecamatan.Text := strngrdKecamatan.Cells[1,strngrdKecamatan.selection.top];
      edtKabKota.SetFocus;
      Visible := False;
    end;
end;

procedure TFEditBiodataPasien.strngrdKabKotaDblClick(Sender: TObject);
begin
   with strngrdKabKota do
    begin
      edtKabKota.Text := strngrdKabKota.Cells[1,strngrdKabKota.selection.top];
      edtKabKota.SetFocus;
      Visible := False;
    end;
end;

procedure TFEditBiodataPasien.edtProvinsiKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    strngrdProvinsi.Visible := True;
    aturkolomProvinsi; ambildataProvinsi; tampildataProvinsi;
  end;
if Key =#27 then strngrdProvinsi.Visible:= False;
end;

procedure TFEditBiodataPasien.edtProvinsiKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_DOWN  then
   strngrdProvinsi.SetFocus; 
end;

procedure TFEditBiodataPasien.strngrdDesaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    with strngrdDesa do
    begin
      edtKeluarahan.Text := strngrdDesa.Cells[1,strngrdDesa.selection.top];
      edtKeluarahan.SetFocus;
      Visible := False;
    end;
  end;
if Key =#27 then strngrdDesa.Visible := False;
end;

procedure TFEditBiodataPasien.strngrdKabKotaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
     with strngrdKabKota do
      begin
        edtKabKota.Text := strngrdKabKota.Cells[1,strngrdKabKota.selection.top];
        edtKabKota.SetFocus;
        Visible := False;
      end;
end;
if Key =#27 then strngrdKabKota.Visible := False;
end;

procedure TFEditBiodataPasien.strngrdKecamatanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    with strngrdKecamatan do
    begin
      edtKecamatan.Text := strngrdKecamatan.Cells[1,strngrdKecamatan.selection.top];
      edtKabKota.SetFocus;
      Visible := False;
    end;
  end;
if Key =#27 then strngrdKecamatan.Visible := False;
end;

procedure TFEditBiodataPasien.strngrdProvinsiDblClick(Sender: TObject);
begin
   with strngrdProvinsi do
   begin
        edtProvinsi.Text := strngrdProvinsi.Cells[1,strngrdProvinsi.selection.top];
        edtProvinsi.SetFocus;
        Visible := False;
   end;
end;

procedure TFEditBiodataPasien.strngrdProvinsiKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
     with strngrdProvinsi do
     begin
          edtProvinsi.Text := strngrdProvinsi.Cells[1,strngrdProvinsi.selection.top];
          edtProvinsi.SetFocus;
          Visible := False;
     end;
  end;
if Key =#27 then strngrdProvinsi.Visible := False;
end;

end.
