unit UDaftarBiodataPx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, StdCtrls, cxButtons, GridsEh, DBGridEh,
  ExtCtrls, Grids;

type
  TFDaftarDataBiodataPasien = class(TForm)
    pnlTegah: TPanel;
    pnlBawah: TPanel;
    btnDaftar: TButton;
    btnPrintLabel: TcxButton;
    pnlAtas: TPanel;
    lblNoRmNama: TLabel;
    pnlKeluar: TPanel;
    edtNoRmNama: TEdit;
    strngrdDataPasien: TStringGrid;
    btnEditPenjamin: TButton;
    btnKOREKSIPENANGGUNGJAWAB: TButton;
    btnLengkapiFoto: TButton;
    procedure btnDaftarClick(Sender: TObject);
    procedure btnPrintLabelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
    procedure edtNoRmNamaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditPenjaminClick(Sender: TObject);
    procedure btnKOREKSIPENANGGUNGJAWABClick(Sender: TObject);
    procedure btnLengkapiFotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure aturkolom;
    procedure ambilData;
    procedure tampildata;
  end;

var
  FDaftarDataBiodataPasien: TFDaftarDataBiodataPasien;

implementation

{$R *.dfm}

uses UDataSimrs,UPendaftaran,UEditBiodataPasien,DateUtils, ADODB, DB,
    UEditPenjaminDataPasien, UKoreksiKeluargaPasien,UFotoBerkas;

procedure umur(ThnLama, ThnBaru:TDate);
begin
iThn:=YearsBetween(ThnBaru, ThnLama);
if (DayOf(ThnBaru) = DayOf(ThnLama)) and (MonthOf(ThnBaru) = MonthOf(ThnLama))
and (YearOf(ThnLama) <> YearOf(ThnBaru))
then inc(iThn);
ThnLama:=IncYear(ThnLama, iThn);
iBln:=MonthsBetween(ThnBaru, ThnLama);
ThnLama:=IncMonth(ThnLama, iBln);
iHari:=DaysBetween(ThnBaru, ThnLama);
end;

procedure TFDaftarDataBiodataPasien.aturkolom;
begin
 with strngrdDataPasien do
 begin
    ColCount :=6;
    RowCount :=2;
    FixedCols:=1;
    DefaultROwHeight:=20;
    Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];

    Cells[0,0]:='No.';
    Cells[1,0]:= 'NO RM ';
    Cells[2,0]:=' NAMA PASIEN';
    Cells[3,0]:='TEMPAT LAHIR';
    Cells[4,0]:='TGL LAHIR';
    Cells[5,0]:='ALAMAT ';

      //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=150;
    ColWidths[2]:=350;
    ColWidths[3]:=200;
    ColWidths[4]:=150;
    ColWidths[5]:=600;
 end;
end;

procedure TFDaftarDataBiodataPasien.ambildata;
begin
 if (edtNoRmNama.Text='') then
 begin
   with DataSimrs.qryVwPasien do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT noRekamedis,nmPasien,tempatLahir,tglLahir,alamat FROM t_pasien  LIMIT 50';
    Open;
   end;
 end
 else
 begin
   with DataSimrs.qryVwPasien do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT noRekamedis,nmPasien,tempatLahir,tglLahir,alamat FROM t_pasien where noRekamedis like "%'+edtNoRmNama.Text+'%" or nmPasien like "%'+edtNoRmNama.Text+'%"  LIMIT 50';
    Open;
   end;
 end;
end;

procedure TFDaftarDataBiodataPasien.tampilData;
var
  i:Integer;
begin
  if DataSimrs.qryVwPasien.RecordCount<>0 then
  begin
    strngrdDataPasien.RowCount := DataSimrs.qryVwPasien.RecordCount+1;
    for i:=0 to DataSimrs.qryVwPasien.RecordCount-1 do
    begin
      strngrdDataPasien.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdDataPasien.Cells[1,i+1] := DataSimrs.qryVwPasien.FieldByName('noRekamedis').AsString;
      strngrdDataPasien.Cells[2,i+1] := DataSimrs.qryVwPasien.FieldByName('nmPasien').AsString;
      strngrdDataPasien.Cells[3,i+1] := DataSimrs.qryVwPasien.FieldByName('tempatLahir').AsString;
      strngrdDataPasien.Cells[4,i+1] := DataSimrs.qryVwPasien.FieldByName('tglLahir').AsString;
      strngrdDataPasien.Cells[5,i+1] := DataSimrs.qryVwPasien.FieldByName('alamat').AsString;
      DataSimrs.qryVwPasien.Next;
    end;
  end;
end;



procedure TFDaftarDataBiodataPasien.btnDaftarClick(Sender: TObject);
var
  sTgl, LTgl : TDateTime;
begin
with DataSimrs.qryVwPasien do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_pasien where noRekamedis="'+strngrdDataPasien.Cells[1,strngrdDataPasien.selection.top]+'"';
  Open;
end;
if DataSimrs.qryVwPasien.RecordCount >= 1 then
  begin
    with FEditBiodataPasien do
    begin
      with DataSimrs.qryVwPasien do
      begin
        edtNoRekamedis.Text := FieldByname('noRekamedis').AsString;
        edtNoIdentitas.Text := FieldByname('noIdentitasKtp').AsString;
        edtNmLengkap.Text := FieldByname('nmPasien').AsString;
        edtTempatLahir.Text := FieldByname('tempatLahir').AsString;
        dtpTglLahir.Date := FieldByname('tglLahir').AsDateTime;
        ///umur tampil
        sTgl := Date;
        LTgl := dtpTglLahir.Date;
        umur(LTgl, sTgl);
        edtTahun.Text :=IntToStr(iThn)+' Tahun, '+IntToStr(iBln)+' Bulan, '+IntToStr(iHari)+' Hari';
        cbbJenisKelamin.Text :=  FieldByname('jenisKelamin').AsString;
        cbbAgama.Text := FieldByname('agama').AsString;
        cbbMaritalStatus.Text := FieldByname('maritalStatus').AsString;
        mmoAlamat.Text := FieldByname('alamat').AsString;
        edtProvinsi.Text := FieldByname('provinsi').AsString;
        cbbPendidikan.Text := FieldByname('pendidikan').AsString;
        cbbPekerjaan.Text :=  FieldByname('pekerjaan').AsString;
        edtKeluarahan.Text := FieldByname('kelurahan').AsString;
        edtKecamatan.Text := FieldByname('kecamatan').AsString;
        edtKabKota.Text := FieldByname('kabupaten').AsString;
        edtKodePos.Text := FieldByname('kdPos').AsString;
        cbbBahasa.Text := FieldByname('bahasa').AsString;
        edtNoTelepone.Text := FieldByname('noTelepone').AsString;
      end;
    Show;
    end;

  end
  else
  Abort;
end;

procedure TFDaftarDataBiodataPasien.btnPrintLabelClick(Sender: TObject);
var
  noRmBiodata:String;
begin
with DataSimrs.qryVwPasien do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_pasien where noRekamedis="'+strngrdDataPasien.Cells[1,strngrdDataPasien.selection.top]+'"';
  Open;
end;

if DataSimrs.qryVwPasien.RecordCount >= 1 then
  begin
    noRmBiodata := DataSimrs.qryVwPasien['noRekamedis'];
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis="'+noRmBiodata+'"';
      Open;
    end;

    with DataSimrs.qryt_settinglinkapplainpendaftaran do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_settinglinkapplainpendaftaran where idsettinglinkapplainpendaftaran=1';
      Open;
    end;


    ///FPendaftaran.frxrprtLabel.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\label2x1IGD.fr3');
    FPendaftaran.frxrprtLabel.LoadFromFile(Trim(DataSimrs.qryt_settinglinkapplainpendaftaran['label2x1'])+'\label2x1IGD.fr3');
    FPendaftaran.frxrprtLabel.ShowReport();
  end
  else
  ShowMessage('Data Tidak Di Temukan...!');
end;

procedure TFDaftarDataBiodataPasien.FormShow(Sender: TObject);
begin
  aturkolom; ambilData; tampildata;
end;

procedure TFDaftarDataBiodataPasien.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDaftarDataBiodataPasien.edtNoRmNamaChange(Sender: TObject);
begin
  aturkolom; ambilData; tampildata;
end;

procedure TFDaftarDataBiodataPasien.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#27 then Close
end;

procedure TFDaftarDataBiodataPasien.btnEditPenjaminClick(Sender: TObject);
begin
with DataSimrs.qryVwPasien do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_pasien where noRekamedis="'+strngrdDataPasien.Cells[1,strngrdDataPasien.selection.top]+'"';
  Open;
end;

IF DataSimrs.qryVwPasien.RecordCount >= 1 then
  begin
    with FEditPenjaminDataPasien do
    begin
      lblNoRm.Caption := DataSimrs.qryVwPasien.FieldByname('noRekamedis').AsString;
      cbbCaraBayar.Text := DataSimrs.qryVwPasien.FieldByname('caraBayar').AsString;
      cbbPenjamin.Text := DataSimrs.qryVwPasien.FieldByname('penjamin').AsString;
      edtNoKartu.Text := DataSimrs.qryVwPasien.FieldByname('noKartuPenjamin').AsString;
      edtNoSep.Text := DataSimrs.qryVwPasien.FieldByname('noSepPenjamin').AsString;
      edtAtasNama.Text := DataSimrs.qryVwPasien.FieldByname('atasNamaPenjamin').AsString;
      Show;
    end
  end
  else
   MessageDlg('Data Tidak Di Temukan!',mtInformation,[mbok],0);
end;

procedure TFDaftarDataBiodataPasien.btnKOREKSIPENANGGUNGJAWABClick(
  Sender: TObject);
begin
with DataSimrs.qryVwPasien do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_pasien where noRekamedis="'+strngrdDataPasien.Cells[1,strngrdDataPasien.selection.top]+'"';
  Open;
end;

if DataSimrs.qryVwPasien.RecordCount >= 1 then
  begin
    with DataSimrs.qryDetailPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * FROM t_detailpasien where noRekamedis="'+strngrdDataPasien.Cells[1,strngrdDataPasien.selection.top]+'"';
      Open;
    end;

    if DataSimrs.qryDetailPasien.RecordCount >= 1 then
    begin
      with FKoreksiKeluargaPasien1 do
      begin
        with DataSimrs.qryDetailPasien do
        begin
           edtNoRm.Text := FieldByname('noRekamedis').AsString;
           edtNamaPenanggungJawab.Text := FieldByname('namaPenanggungJawab').AsString;
           edtHubungan.Text := FieldByname('hubungan').AsString;
           mmoAlamat.Text := FieldByname('alamat').AsString;
           edtProvinsi.Text := FieldByname('provinsi').AsString;
           edtKabKota.Text := FieldByname('kabupaten').AsString;
           edtKecamatan.Text := FieldByname('kecamatan').AsString;
           edtKeluarahan.Text := FieldByname('kelurahan').AsString;
           edtKdPos1.Text := FieldByname('kodePos').AsString;
        end;
        Show;
      end;
    end
    else
    begin
      with FKoreksiKeluargaPasien1 do
      begin
        {with DataSimrs.qryVwPasien do
        begin
           edtNoRm.Text := FieldByname('noRekamedis').AsString;
        end;}
        edtNoRm.Text := strngrdDataPasien.Cells[1,strngrdDataPasien.selection.top];
        Show;
      end
    end;
  end
  else
    MessageDlg('Data Pasien Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

procedure TFDaftarDataBiodataPasien.btnLengkapiFotoClick(Sender: TObject);
begin
with DataSimrs.qryVwPasien do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_pasien where noRekamedis="'+strngrdDataPasien.Cells[1,strngrdDataPasien.selection.top]+'"';
  Open;
end;

if DataSimrs.qryVwPasien.RecordCount >= 1 then
  begin
    with FFotoBerkas do
    begin
      cxlblNoRekamedis.Caption :=  DataSimrs.qryVwPasien['noRekamedis'];
      cxlblNamaPasien.Caption := DataSimrs.qryVwPasien['nmPasien'];
      Show;
    end;
  end
  else
  MessageDlg('Data Pasien Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

end.
