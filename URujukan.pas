unit URujukan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  TFRujukan = class(TForm)
    grpPencarian: TGroupBox;
    lblJenisNomerSep: TLabel;
    cbbJenisNomer: TComboBox;
    btnCari: TButton;
    grpIsianData: TGroupBox;
    grpMENU: TGroupBox;
    lblNOSEP: TLabel;
    lblTGLRUJUKAN: TLabel;
    lblPPKRUJUKAN: TLabel;
    lblJENISPELAYANAN: TLabel;
    lblCATATAN: TLabel;
    lblDIAGNOSARUJUKAN: TLabel;
    lblTIPERUJUKAN: TLabel;
    lblPOLIRUJUKAN: TLabel;
    edtNOSEP: TEdit;
    dtpTGLRUJUKAN: TDateTimePicker;
    edtPPKRUJUKAN: TEdit;
    cbbFASKES: TComboBox;
    mmoCATATAN: TMemo;
    edtDIAGNOSA: TEdit;
    cbbTIPEPERUJUK: TComboBox;
    edtPOLIPERUJUK: TEdit;
    btnSIMPAN: TButton;
    btnUBAH: TButton;
    btnHAPUS: TButton;
    btnBARU: TButton;
    edtKODEPPK: TEdit;
    edtKODEDIAGNOSA: TEdit;
    edtKODEPOLI: TEdit;
    idhtpRujukan: TIdHTTP;
    lstDiagnosaManual: TListBox;
    idhtpDiagnosaiRujuk: TIdHTTP;
    lstKodeDiagnosa: TListBox;
    lstPPKASALPESERTAMANUAL: TListBox;
    lstKodePPK: TListBox;
    idhtpPoli: TIdHTTP;
    lstSubSepesialis: TListBox;
    lstKodeSubSpesialis: TListBox;
    procedure FormShow(Sender: TObject);
    procedure btnBARUClick(Sender: TObject);
    procedure btnSIMPANClick(Sender: TObject);
    procedure edtDIAGNOSAKeyPress(Sender: TObject; var Key: Char);
    procedure lstDiagnosaManualKeyPress(Sender: TObject; var Key: Char);
    procedure edtPPKRUJUKANKeyPress(Sender: TObject; var Key: Char);
    procedure lstPPKASALPESERTAMANUALKeyPress(Sender: TObject;
      var Key: Char);
    procedure lstPPKASALPESERTAMANUALDblClick(Sender: TObject);
    procedure lstDiagnosaManualDblClick(Sender: TObject);
    procedure edtPOLIPERUJUKKeyPress(Sender: TObject; var Key: Char);
    procedure lstSubSepesialisKeyPress(Sender: TObject; var Key: Char);
    procedure lstSubSepesialisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awal;
    procedure tampilDiagnosaManual();
    procedure tampilPpkRujukanManual;
    procedure tampilSubSpesialis;
  end;

var
  FRujukan: TFRujukan;

implementation

uses UKonseksiBridingBpjs,superobject,UResponeRujukanVklaim,UDataSimrs,
  ADODB, DB;

{$R *.dfm}

procedure TFRujukan.awal;
begin
  cbbJenisNomer.ItemIndex := 1;
  edtNOSEP.Text := '';
  dtpTGLRUJUKAN.DateTime := Now;
  edtPPKRUJUKAN.Text := ''; edtKODEPPK.Text := '';
  cbbFASKES.Text := '';
  mmoCATATAN.Text := '';
  edtDIAGNOSA.Text := ''; edtKODEDIAGNOSA.Text := '';
  dtpTGLRUJUKAN.DateTime := Now;
  cbbTIPEPERUJUK.Text := '';
  edtPOLIPERUJUK.Text := '';  edtKODEPOLI.Text := '';
end;

procedure TFRujukan.tampilDiagnosaManual;
var
  get_url_diagnosa: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootdiagnosa,nama:ISuperObject;
begin
    FKonseksiBridingBpjs.mmodiagnosa.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_diagnosa := FKonseksiBridingBpjs.edtlinkurl.Text+'tampilDiagnosa.php?diagnosa=';
    resp := TMemoryStream.Create;
    try
      idhtpDiagnosaiRujuk.Get(get_url_diagnosa+edtDIAGNOSA.Text, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmodiagnosa.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstDiagnosaManual.Items.Text := '';
    lstDiagnosaManual.Visible := True;
    json_rootdiagnosa:=SO(FKonseksiBridingBpjs.mmodiagnosa.Text);
    if json_rootdiagnosa.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootdiagnosa.A['response.diagnosa'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootdiagnosa.A['response.diagnosa'].O[i];
    lstDiagnosaManual.Items.Add(nama.S['nama']);
    lstKodeDiagnosa.Items.Add(nama.S['kode']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootdiagnosa.S['metadata.message'],mtInformation,[mbOK],0);

end;

/// tampil ppk rujukan
procedure TFRujukan.tampilPpkRujukanManual;
var
  get_url_ppkRjkManual,ppkRjkManual,faskesManual,asalRjkManual: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootPpkRjkManual,nama:ISuperObject;
begin
    FKonseksiBridingBpjs.mmoPpkRujukan.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_ppkRjkManual := FKonseksiBridingBpjs.edtlinkurl.Text+'tampilPpkRujukan.php?';
    resp := TMemoryStream.Create;
    try
      ppkRjkManual := 'ppkrujukan='+edtPPKRUJUKAN.Text;

      faskesManual := '&faskes=2';

      idhtpRujukan.Get(get_url_ppkRjkManual+ppkRjkManual+faskesManual, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmoPpkRujukan.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstPPKASALPESERTAMANUAL.Items.Text := '';
    lstKodePPK.Items.Text := '';
    lstPPKASALPESERTAMANUAL.Visible := True;
    json_rootPpkRjkManual:=SO(FKonseksiBridingBpjs.mmoPpkRujukan.Text);
    if json_rootPpkRjkManual.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootPpkRjkManual.A['response.faskes'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootPpkRjkManual.A['response.faskes'].O[i];
    lstPPKASALPESERTAMANUAL.Items.Add(nama.S['nama']);
    lstKodePPK.Items.Add(nama.S['kode']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootPpkRjkManual.S['metadata.message'],mtInformation,[mbOK],0);
end;

procedure TFRujukan.tampilSubSpesialis;
var
  get_url_poli: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootpoli,nama:ISuperObject;
begin
    FKonseksiBridingBpjs.mmopoli.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_poli := FKonseksiBridingBpjs.edtlinkurl.Text+'tampilPoli.php?poli=';
    resp := TMemoryStream.Create;
    try
      idhtpPoli.Get(get_url_poli+edtPOLIPERUJUK.Text, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmopoli.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstSubSepesialis.Items.Text := '';
    lstSubSepesialis.Visible := True;
    lstKodeSubSpesialis.Items.Text := '';
    json_rootpoli:=SO(FKonseksiBridingBpjs.mmopoli.Text);
    
    if json_rootpoli.s['metaData.code'] = '200'  then
    begin
      for i := 0 to json_rootpoli.A['response.poli'].Length-1 do
      begin
        nama:=json_rootpoli.A['response.poli'].O[i];
        lstSubSepesialis.Items.Add(nama.S['nama']);
        lstKodeSubSpesialis.Items.Add(nama.S['kode']);
      end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootpoli.S['metadata.message'],mtInformation,[mbOK],0);
end;


procedure TFRujukan.FormShow(Sender: TObject);
begin
  awal;
end;

procedure TFRujukan.btnBARUClick(Sender: TObject);
begin
  awal;
end;

procedure TFRujukan.btnSIMPANClick(Sender: TObject);
var
  get_urlRujukan,noSep,tglRujukan,ppkDirujuk,jnsPelayanan,
  catatan,diagRujukan,tipeRujukan,poliRujukan,noRujukan:String;

  resp: TMemoryStream;
  json_rootRujuk:ISuperObject;
begin
if (edtNOSEP.Text='') then
    begin
       MessageDlg('NO SEP WAJIB DI ISI...!',mtWarning,[mbOK],0);
       edtNOSEP.SetFocus;
    end
ELSE IF (edtKODEPPK.Text='') then
    begin
      MessageDlg('PPK PERUJUK WAJIB DI ISI...!',mtWarning,[mbOK],0);
      edtPPKRUJUKAN.SetFocus;
    end
ELSE IF (edtKODEDIAGNOSA.Text='') then
    begin
       MessageDlg('DIAGNOSA WAJIB DI ISI...!',mtWarning,[mbOK],0);
      edtDIAGNOSA.SetFocus;
    end
else if (edtKODEPOLI.Text='') then
    begin
      MessageDlg('DIAGNOSA WAJIB DI ISI...!',mtWarning,[mbOK],0);
      edtPOLIPERUJUK.SetFocus;
    end
else
    begin
      get_urlRujukan := FKonseksiBridingBpjs.edtlinkurl.Text+'insertrujukan.php?';
      resp := TMemoryStream.Create;
      try
        noSep := 'noSep='+edtNOSEP.Text;
        tglRujukan := '&tglRujukan='+FormatDateTime('yyyy-MM-dd hh:mm:ss',dtpTGLRUJUKAN.DateTime);
        ppkDirujuk := '&ppkDirujuk='+edtKODEPPK.Text;
        jnsPelayanan := '%jnsPelayanan='+cbbFASKES.Text;
        catatan := '&catatan='+mmoCATATAN.Text;
        diagRujukan := '&diagRujukan='+edtKODEDIAGNOSA.Text;
        tipeRujukan := '&tipeRujukan='+cbbTIPEPERUJUK.Text;
        poliRujukan := '&poliRujukan='+edtKODEPOLI.Text;

        idhtpRujukan.Get(get_urlRujukan+noSep+tglRujukan+ppkDirujuk+jnsPelayanan+catatan+diagRujukan+tipeRujukan+poliRujukan,resp);
        resp.Position := 0;
        FKonseksiBridingBpjs.mmoInsertRujukan.Lines.LoadFromStream(resp);
      finally
        resp.Free;
      end;

      with FResponeRujukanVklaim do
      begin
        json_rootRujuk:=SO(FKonseksiBridingBpjs.mmoResponeInsertSep .Lines.Text);
        if json_rootRujuk.I['metaData.code'] = 200  then
        begin
          mmoRespone.Lines.Add('AsalRujukan(KODE/NAMA) :'+json_rootRujuk.S['response.rujukan.AsalRujukan.kode']+'/'+json_rootRujuk.S['response.rujukan.AsalRujukan.nama']+
                                 'diagnosa(KODE/NAMA) :'+json_rootRujuk.S['response.rujukan.diagnosa.kode']+'/'+json_rootRujuk.S['response.rujukan.diagnosa.nama']+
                                 'noRujukan :'+json_rootRujuk.S['response.rujukan.noRujukan']+
                                 'peserta (asuransi) :'+json_rootRujuk.S['response.rujukan.peserta.asuransi']+
                                 'hakKelas :'+json_rootRujuk.S['response.rujukan.peserta.hakKelas']+
                                 'jnsPeserta :'+json_rootRujuk.S['response.rujukan.peserta.jnsPeserta']+
                                 'kelamin :'+json_rootRujuk.S['response.rujukan.peserta.kelamin']+
                                 'nama :'+json_rootRujuk.S['response.rujukan.peserta.nama']+
                                 'noKartu :'+json_rootRujuk.S['response.rujukan.peserta.noKartu']+
                                 'noMr :'+json_rootRujuk.S['response.rujukan.peserta.noMr']+
                                 'tglLahir :'+json_rootRujuk.S['response.rujukan.peserta.tglLahir']+
                                 'poliTujuan (kode) :'+json_rootRujuk.S['response.rujukan.poliTujuan.kode']+
                                 'poliTujuan (nama) :'+json_rootRujuk.S['response.rujukan.poliTujuan.nama']+
                                 'tglRujukan :'+json_rootRujuk.S['response.rujukan.tglRujukan']+
                                 'tujuanRujukan (kode) :'+json_rootRujuk.S['response.rujukan.tujuanRujukan.kode']+
                                 'tujuanRujukan (nama) :'+json_rootRujuk.S['response.rujukan.tujuanRujukan.nama']
                                );

          noRujukan := json_rootRujuk.S['response.rujukan.noRujukan'];

          with DataSimrs.qrybridging_rujukan_bpjs do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'insert into bridging_rujukan_bpjs (no_sep,tglRujukan,ppkDirujuk,nm_ppkDirujuk,jnsPelayanan,catatan,diagRujukan,nama_diagRujukan,tipeRujukan,poliRujukan,'+
                        'nama_poliRujukan,no_rujukan,user) values ("'+edtNOSEP.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTGLRUJUKAN.Date)+'","'+edtKODEPPK.Text+'",'+
                        '"'+edtPPKRUJUKAN.Text+'","'+cbbFASKES.Text+'","'+mmoCATATAN.Text+'","'+edtKODEDIAGNOSA.Text+'","'+edtDIAGNOSA.Text+'","'+cbbTIPEPERUJUK.Text+'",'+
                        '"'+edtKODEPOLI.Text+'","'+edtPOLIPERUJUK.Text+'","'+noRujukan+'")';
            ExecSQL;
            SQL.Text := 'select * from bridging_rujukan_bpjs';
            Open;
          end;

          
        end
        else
          mmoRespone.Lines.Text := json_rootRujuk.S['metaData.message'];
        Show;
      end;

    end;
end;

procedure TFRujukan.edtDIAGNOSAKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    if edtDIAGNOSA.Text = '' then
      MessageDlg('Data Diagnosa Harus Di Isi....!',mtInformation,[mbOK],0)
    else
    begin
    tampilDiagnosaManual;
    lstDiagnosaManual.SetFocus;
    //edtNOTELEPONEMANUAL.SetFocus;
    end;
  end;
end;

procedure TFRujukan.lstDiagnosaManualKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtDIAGNOSA.Text := lstDiagnosaManual.Items[lstDiagnosaManual.Itemindex];
    edtKodeDiagnosa.Text := lstKodeDiagnosa.Items[lstDiagnosaManual.Itemindex];
    lstDiagnosaManual.Visible := False;
    cbbTIPEPERUJUK.SetFocus;
  end;
end;

procedure TFRujukan.edtPPKRUJUKANKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    if (edtPPKRUJUKAN.Text='') then
    begin
      MessageDlg('ASAL RUJUKAN BELUM DI ISI...!',mtInformation,[mbOK],0);
      edtPPKRUJUKAN.SetFocus;
    end
    else
    begin
      tampilPpkRujukanManual;
      lstPPKASALPESERTAMANUAL.SetFocus;
    end
  end;
end;

procedure TFRujukan.lstPPKASALPESERTAMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    edtPPKRUJUKAN.Text := lstPPKASALPESERTAMANUAL.Items[lstPPKASALPESERTAMANUAL.itemindex];
    edtKODEPPK.Text := lstKodePPK.Items[lstPPKASALPESERTAMANUAL.itemindex];
    lstPPKASALPESERTAMANUAL.Visible := False;
    cbbFASKES.SetFocus;
  end;
end;

procedure TFRujukan.lstPPKASALPESERTAMANUALDblClick(Sender: TObject);
begin
  edtPPKRUJUKAN.Text := lstPPKASALPESERTAMANUAL.Items[lstPPKASALPESERTAMANUAL.itemindex];
  edtKODEPPK.Text := lstKodePPK.Items[lstPPKASALPESERTAMANUAL.itemindex];
  lstPPKASALPESERTAMANUAL.Visible := False;
  cbbFASKES.SetFocus;
end;

procedure TFRujukan.lstDiagnosaManualDblClick(Sender: TObject);
begin
  edtDIAGNOSA.Text := lstDiagnosaManual.Items[lstDiagnosaManual.Itemindex];
  edtKodeDiagnosa.Text := lstKodeDiagnosa.Items[lstDiagnosaManual.Itemindex];
  lstDiagnosaManual.Visible := False;
  cbbTIPEPERUJUK.SetFocus;
end;

procedure TFRujukan.edtPOLIPERUJUKKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    if (edtPOLIPERUJUK.Text='') then
      MessageDlg('Data Subspesialis ....!',mtWarning,[mbOK],0)
    else
    begin
    tampilSubSpesialis;
    lstSubSepesialis.SetFocus;
    end;
  end;
end;

procedure TFRujukan.lstSubSepesialisKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtPOLIPERUJUK.Text := lstSubSepesialis.Items[lstSubSepesialis.Itemindex];
    edtKODEPOLI.Text := lstKodeSubSpesialis.Items[lstSubSepesialis.itemindex];
    lstSubSepesialis.Visible := False;
  end;
end;

procedure TFRujukan.lstSubSepesialisClick(Sender: TObject);
begin
edtPOLIPERUJUK.Text := lstSubSepesialis.Items[lstSubSepesialis.Itemindex];
edtKODEPOLI.Text := lstKodeSubSpesialis.Items[lstSubSepesialis.itemindex];
lstSubSepesialis.Visible := False;
end;

end.
