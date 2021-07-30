unit UUpdatePulangSep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  TFUpdatePulangSep = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    grpCariNoSep: TGroupBox;
    edtCariNoSep: TEdit;
    btnCari: TButton;
    grpDataUpdatePulang: TGroupBox;
    lblNomerSep: TLabel;
    edtNOSEP: TEdit;
    lblSTATUSPULANG: TLabel;
    lblTGLPULANG: TLabel;
    dtpTGLPULANG: TDateTimePicker;
    btnSIMPAN: TButton;
    btnKELUAR: TButton;
    idhtpCariSep: TIdHTTP;
    idhtpStatusPulang: TIdHTTP;
    edtStatusPulang: TEdit;
    lstStatusPulang: TListBox;
    idhtpUpdateTgl: TIdHTTP;
    grpTampilRespon: TGroupBox;
    mmo1: TMemo;
    procedure btnKELUARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure lstStatusPulangClick(Sender: TObject);
    procedure edtStatusPulangClick(Sender: TObject);
    procedure btnSIMPANClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awal;
    procedure statusPulang;
  end;

var
  FUpdatePulangSep: TFUpdatePulangSep;

implementation

uses UKonseksiBridingBpjs,superobject, UPendaftaran,UDataSimrs, ADODB, DB;

{$R *.dfm}
///procedure awal
procedure TFUpdatePulangSep.awal;
begin
  edtCariNoSep.Clear;
  edtNOSEP.Clear;
  edtStatusPulang.Text := '';
  dtpTGLPULANG.Date := Now;
  mmo1.Clear;
end;

/// procedure status pulang
procedure TFUpdatePulangSep.statusPulang;
var
  get_url_statusPulang: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_root_statusPulang,nama:ISuperObject;
begin
  FKonseksiBridingBpjs.mmoStatusPulang.Lines.Text := '';
  TIdHTTP.Create(nil);
  get_url_statusPulang := FKonseksiBridingBpjs.edtlinkurl.Text+'statuspulang.php';
  resp := TMemoryStream.Create;
  try

      idhtpStatusPulang.Get(get_url_statusPulang, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmoStatusPulang.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstStatusPulang.Items.Text := '';
    lstStatusPulang.Visible := True;
    json_root_statusPulang:=SO(FKonseksiBridingBpjs.mmoStatusPulang.Text);
    if json_root_statusPulang.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_root_statusPulang.A['response.list'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_root_statusPulang.A['response.list'].O[i];
    lstStatusPulang.Items.Add(nama.S['nama']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root_statusPulang.S['metadata.message'],mtInformation,[mbOK],0);
end;

procedure TFUpdatePulangSep.btnKELUARClick(Sender: TObject);
begin
  Close;
end;

procedure TFUpdatePulangSep.FormShow(Sender: TObject);
begin
  awal;
end;

procedure TFUpdatePulangSep.btnCariClick(Sender: TObject);
VAR
  get_urlNoSep: string;
  resp: TMemoryStream;
  json_rootNoSep:ISuperObject;
begin
    FKonseksiBridingBpjs.mmocarisep.Lines.Text := '';
    TIdHTTP.Create(nil);
 /// url cari sep
    get_urlNoSep :=FKonseksiBridingBpjs.edtlinkurl.Text+'carisep.php?nosep=';

    resp := TMemoryStream.Create;
    try
      idhtpCariSep.Get(get_urlNoSep+edtCariNoSep.Text, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmocarisep.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    json_rootNoSep:=SO(FKonseksiBridingBpjs.mmocarisep.Lines.Text);
    if json_rootNoSep.S['metaData.code'] = '200'  then
    begin
      edtNOSEP.Text := json_rootNoSep.S['response.noSep'];
      edtStatusPulang.SetFocus;
    end
    else
    begin
      FKonseksiBridingBpjs.mmocarisep.Lines.Add(json_rootNoSep.S['metadata.message']);
      MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootNoSep.S['metadata.message'],mtInformation,[mbOK],0);
      edtCariNoSep.SetFocus;
    end;
end;

procedure TFUpdatePulangSep.lstStatusPulangClick(Sender: TObject);
begin
    edtStatusPulang.Text := lstStatusPulang.Items[lstStatusPulang.itemindex];
    lstStatusPulang.Visible := False;
end;

procedure TFUpdatePulangSep.edtStatusPulangClick(Sender: TObject);
begin
  statusPulang;
end;

procedure TFUpdatePulangSep.btnSIMPANClick(Sender: TObject);
var
  get_url_updatetglpulang,noSep,tglPulang,user: string;
  resp: TMemoryStream;
  json_rootUpdatePulang,json_rootRespon:ISuperObject;
begin
if (edtStatusPulang.Text='') then
    MessageDlg('Status Pulang Wajib Di Isi....!',mtWarning,[mbOK],0)
    else
    begin
    TIdHTTP.Create(nil);
    get_url_updatetglpulang := FKonseksiBridingBpjs.edtlinkurl.Text+'update_tglpulang.php?';
    resp := TMemoryStream.Create;
    try
      noSep := 'noSep='+edtNOSEP.Text;
      tglPulang := '&tglPulang='+FormatDateTime('yyyy-MM-dd hh:mm:ss',dtpTGLPULANG.DateTime);
      //user := '&user='+FPendaftaran.statSimrs.Panels[0].Text;
      user := '&user=coba';
      idhtpUpdateTgl.Get(get_url_updatetglpulang + noSep + tglPulang + user, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmoStatusPulang.Lines.LoadFromStream(resp);
      //mmo1.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    json_rootRespon:=SO(FKonseksiBridingBpjs.mmoStatusPulang.Lines.Text);
    if json_rootRespon.S['metaData.code'] = '200'  then
    begin
      mmo1.Text := json_rootRespon.S['response.noSep'];
      /// update di tanggal sep
      with DataSimrs.qryt_bridingsep do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'update t_bridingsep set tglpulang="'+FormatDateTime('yyyy-MM-dd hh:mm:ss',dtpTGLPULANG.DateTime)+'" where no_sep="'+edtNOSEP.Text+'"';
        ExecSQL;
        SQL.Text := 'select * from t_bridingsep';
        Open;
      end;
      
    end
    else
    begin
      mmo1.Text := json_rootRespon.S['metaData.message'];
    end;

    end;
end;

end.
