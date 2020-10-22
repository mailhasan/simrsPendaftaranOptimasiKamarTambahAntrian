unit UKoreksiKeluargaPasien;

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
  cxDBLookupEdit, cxDBLookupComboBox, Grids;

type
  TFKoreksiKeluargaPasien1 = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlBawah: TPanel;
    btnSimpan: TButton;
    pnlTengah: TPanel;
    lblNoRekamedis: TLabel;
    lblNamaPenanggungJawab: TLabel;
    lblHubungan: TLabel;
    lblAlamat: TLabel;
    edtKdPos1: TEdit;
    lblProvinsiDetail: TLabel;
    lblKabupatenDetail: TLabel;
    lblKecamatanDetail: TLabel;
    lblkeluarahandetail: TLabel;
    lblKodePosDetail: TLabel;
    mmoAlamat: TMemo;
    edtHubungan: TEdit;
    edtNamaPenanggungJawab: TEdit;
    edtNoRm: TEdit;
    edtProvinsi: TEdit;
    edtKabKota: TEdit;
    edtKecamatan: TEdit;
    edtKeluarahan: TEdit;
    strngrdDesa: TStringGrid;
    strngrdKecamatan: TStringGrid;
    strngrdKabKota: TStringGrid;
    strngrdProvinsi: TStringGrid;
    procedure pnlKeluarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSimpanClick(Sender: TObject);
    procedure cbbKelurahan1KeyPress(Sender: TObject; var Key: Char);
    procedure edtNamaPenanggungJawabKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtHubunganKeyPress(Sender: TObject; var Key: Char);
    procedure edtKdPos1KeyPress(Sender: TObject; var Key: Char);
    procedure edtKeluarahanKeyPress(Sender: TObject; var Key: Char);
    procedure edtKeluarahanKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtKecamatanKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtKecamatanKeyPress(Sender: TObject; var Key: Char);
    procedure edtKabKotaKeyPress(Sender: TObject; var Key: Char);
    procedure edtKabKotaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProvinsiKeyPress(Sender: TObject; var Key: Char);
    procedure edtProvinsiKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure strngrdDesaKeyPress(Sender: TObject; var Key: Char);
    procedure strngrdDesaDblClick(Sender: TObject);
    procedure strngrdKabKotaDblClick(Sender: TObject);
    procedure strngrdKabKotaKeyPress(Sender: TObject; var Key: Char);
    procedure strngrdKecamatanDblClick(Sender: TObject);
    procedure strngrdKecamatanKeyPress(Sender: TObject; var Key: Char);
    procedure strngrdProvinsiKeyPress(Sender: TObject; var Key: Char);
    procedure strngrdProvinsiDblClick(Sender: TObject);
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
  FKoreksiKeluargaPasien1: TFKoreksiKeluargaPasien1;

implementation

{$R *.dfm}

uses UDataSImrs, ADODB, DB;

procedure TFKoreksiKeluargaPasien1.aturkolomDesa;
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

procedure TFKoreksiKeluargaPasien1.aturkolomKecamatan;
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

procedure TFKoreksiKeluargaPasien1.aturkolomKabKota;
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

procedure TFKoreksiKeluargaPasien1.aturkolomProvinsi;
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

procedure TFKoreksiKeluargaPasien1.ambildataDesa;
begin
  with DataSimrs.qryt_allindonesia do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT DISTINCT  kelurahan FROM t_allindonesia where kelurahan like "'+edtKeluarahan.Text+'%" limit 50';
    Open;
  end;
end;

procedure TFKoreksiKeluargaPasien1.ambildataKecamatan;
begin
  with DataSimrs.qryt_allindonesia do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT DISTINCT  kecamatan FROM t_allindonesia where kecamatan like "'+edtKecamatan.Text+'%"  limit 50';
    Open;
  end;
end;

procedure TFKoreksiKeluargaPasien1.ambildataKabKota;
begin
  with DataSimrs.qryt_allindonesia do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT kabKota,kabKotaNama FROM t_allindonesia where kabKotaNama like "'+edtKabKota.Text+'%" limit 50';
    Open;
  end;
end;

procedure TFKoreksiKeluargaPasien1.ambildataProvinsi;
begin
  with DataSimrs.qryt_allindonesia do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT provinsi FROM t_allindonesia where provinsi like "'+edtProvinsi.Text+'%"  limit 50';
    Open;
  end;
end;


procedure TFKoreksiKeluargaPasien1.tampildatadesa;
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

procedure TFKoreksiKeluargaPasien1.tampildatakecamatan;
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

procedure TFKoreksiKeluargaPasien1.tampildataKabKota;
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

procedure TFKoreksiKeluargaPasien1.tampildataProvinsi;
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

procedure TFKoreksiKeluargaPasien1.pnlKeluarClick(Sender: TObject);
begin
Close;
end;

procedure TFKoreksiKeluargaPasien1.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key =#27 then Close;
end;

procedure TFKoreksiKeluargaPasien1.btnSimpanClick(Sender: TObject);
begin
 if DataSimrs.qryDetailPasien.Locate('',edtNoRm.Text,[])  then
 begin
   with DataSimrs.qryDetailPasien do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'update t_detailpasien set namaPenanggungJawab="'+edtNamaPenanggungJawab.Text+'"'+
                ',hubungan="'+edtHubungan.Text+'",alamat="'+mmoAlamat.Text+'",'+
                'kdKelurahan="'+edtKeluarahan.Text+'",kdKecamatan="'+edtKecamatan.Text+'",'+
                'kdKabupaten="'+edtKabKota.Text+'",kdProvinsi="'+edtProvinsi.Text+'",'+
                'kodePos="'+edtKdPos1.Text+'" where noRekamedis="'+edtNoRm.Text+'"';
    ExecSQL;
    SQL.Text := 'select * from t_detailpasien';
    Open
   end;
     MessageDlg('Pasien Berhasil Di Simpan....!',mtInformation,[mbok],0);
     Close;
 end
 else
 begin
   with DataSimrs.qryDetailPasien do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'insert into t_detailpasien '+
                '(noRekamedis,namaPenanggungJawab,hubungan,alamat,kdKelurahan,kdKecamatan,kdKabupaten,kdProvinsi,kodePos) values '+
                '("'+edtNoRm.Text+'","'+edtNamaPenanggungJawab.Text+'","'+edtHubungan.Text+'","'+mmoAlamat.Text+'","'+edtKeluarahan.Text+'",'+
                '"'+edtKecamatan.Text+'","'+edtKeluarahan.Text+'","'+edtProvinsi.Text+'","'+edtKdPos1.Text+'")';
    ExecSQL;
    SQL.Text := 'select * from t_detailpasien';
    Open;
   end;
    MessageDlg('Pasien Berhasil Di Simpan....!',mtInformation,[mbok],0);
    Close;
 end;


end;

procedure TFKoreksiKeluargaPasien1.cbbKelurahan1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    edtKdPos1.SetFocus;
  end;
end;

procedure TFKoreksiKeluargaPasien1.edtNamaPenanggungJawabKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
   Key:=#0;
   edtHubungan.SetFocus;
  end
end;

procedure TFKoreksiKeluargaPasien1.edtHubunganKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  Key:=#0;
  mmoAlamat.SetFocus;
end;

procedure TFKoreksiKeluargaPasien1.edtKdPos1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
   key:=#0;
   btnSimpan.SetFocus;
end;

procedure TFKoreksiKeluargaPasien1.edtKeluarahanKeyPress(Sender: TObject;
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

procedure TFKoreksiKeluargaPasien1.edtKeluarahanKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_DOWN  then
   strngrdDesa.SetFocus; 
end;

procedure TFKoreksiKeluargaPasien1.edtKecamatanKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_DOWN  then
   strngrdKecamatan.SetFocus; 
end;

procedure TFKoreksiKeluargaPasien1.edtKecamatanKeyPress(Sender: TObject;
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

procedure TFKoreksiKeluargaPasien1.edtKabKotaKeyPress(Sender: TObject;
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

procedure TFKoreksiKeluargaPasien1.edtKabKotaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_DOWN  then
   strngrdKabKota.SetFocus; 
end;

procedure TFKoreksiKeluargaPasien1.edtProvinsiKeyPress(Sender: TObject;
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

procedure TFKoreksiKeluargaPasien1.edtProvinsiKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_DOWN  then
   strngrdProvinsi.SetFocus; 
end;

procedure TFKoreksiKeluargaPasien1.strngrdDesaKeyPress(Sender: TObject;
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

procedure TFKoreksiKeluargaPasien1.strngrdDesaDblClick(Sender: TObject);
begin
  with strngrdDesa do
    begin
      edtKeluarahan.Text := strngrdDesa.Cells[1,strngrdDesa.selection.top];
      edtKeluarahan.SetFocus;
      Visible := False;
    end;
end;

procedure TFKoreksiKeluargaPasien1.strngrdKabKotaDblClick(Sender: TObject);
begin
with strngrdKabKota do
  begin
    edtKabKota.Text := strngrdKabKota.Cells[1,strngrdKabKota.selection.top];
    edtKabKota.SetFocus;
    Visible := False;
  end;
end;

procedure TFKoreksiKeluargaPasien1.strngrdKabKotaKeyPress(Sender: TObject;
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

procedure TFKoreksiKeluargaPasien1.strngrdKecamatanDblClick(
  Sender: TObject);
begin
with strngrdKecamatan do
    begin
      edtKecamatan.Text := strngrdKecamatan.Cells[1,strngrdKecamatan.selection.top];
      edtKabKota.SetFocus;
      Visible := False;
    end;
end;

procedure TFKoreksiKeluargaPasien1.strngrdKecamatanKeyPress(
  Sender: TObject; var Key: Char);
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

procedure TFKoreksiKeluargaPasien1.strngrdProvinsiKeyPress(Sender: TObject;
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

procedure TFKoreksiKeluargaPasien1.strngrdProvinsiDblClick(
  Sender: TObject);
begin
with strngrdProvinsi do
  begin
    edtProvinsi.Text := strngrdProvinsi.Cells[1,strngrdProvinsi.selection.top];
    edtProvinsi.SetFocus;
    Visible := False;
  end;
end;

end.
