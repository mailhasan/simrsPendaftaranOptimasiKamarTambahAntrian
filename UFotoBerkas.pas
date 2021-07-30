unit UFotoBerkas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,Jpeg,
  DB, ADODB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFFotoBerkas = class(TForm)
    pnlBawah: TPanel;
    btnSimpan: TButton;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlTengah: TPanel;
    grpDataFoto: TGroupBox;
    cxlblNoRekamedis: TcxLabel;
    cxlblNamaPasien: TcxLabel;
    btnUpploadFotoProfil: TButton;
    btnUploadFotoPenjamin: TButton;
    dlgOpen1: TOpenDialog;
    pnlFotoProfil: TPanel;
    pnlFotoUpploadPenjamin: TPanel;
    imgFotoBerkas: TImage;
    imgFotoProfil: TImage;
    dst_fotoberkas: TDataSource;
    qryt_fotoberkas: TZQuery;
    edtFotoProfil: TEdit;
    edtFotoPenjamin: TEdit;
    procedure btnUpploadFotoProfilClick(Sender: TObject);
    procedure btnUploadFotoPenjaminClick(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure SimpanDirektory;
  end;

var
  FFotoBerkas: TFFotoBerkas;

implementation

{$R *.dfm}
uses UDataSimrs;

procedure TFFotoBerkas.SimpanDirektory;
var Dir:String;
begin
Dir:='\\simrs_02\New folder\kelengkapan Pengembangan\_NEW SIMRS 2019\APPS\APLIKASI PENDAFTARAN & RAJAL_IGD\fotoBerkas';
if DirectoryExists(dir) then
begin
end
else
ForceDirectories(Dir);
end;

procedure TFFotoBerkas.btnUpploadFotoProfilClick(Sender: TObject);
begin
if dlgOpen1.Execute then
begin
edtFotoProfil.Text:=dlgOpen1.FileName;
imgFotoProfil.Picture.LoadFromFile(edtFotoProfil.Text);

edtFotoProfil.Text:='\\simrs_02\New folder\kelengkapan Pengembangan\_NEW SIMRS 2019\APPS\APLIKASI PENDAFTARAN & RAJAL_IGD\fotoBerkas\KTP'+cxlblNoRekamedis.Caption+'.jpg';
end;
end;

procedure TFFotoBerkas.btnUploadFotoPenjaminClick(Sender: TObject);
begin
if dlgOpen1.Execute then
begin
edtFotoPenjamin.Text:=dlgOpen1.FileName;
imgFotoBerkas.Picture.LoadFromFile(edtFotoPenjamin.Text);

edtFotoPenjamin.Text:='\\simrs_02\New folder\kelengkapan Pengembangan\_NEW SIMRS 2019\APPS\APLIKASI PENDAFTARAN & RAJAL_IGD\fotoBerkas\PJM'+cxlblNoRekamedis.Caption+'.jpg';
end;
end;

procedure TFFotoBerkas.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFFotoBerkas.btnSimpanClick(Sender: TObject);
var stream,stream1 : tmemorystream;
begin
imgFotoProfil.Picture.SaveToFile('\\simrs_02\New folder\kelengkapan Pengembangan\_NEW SIMRS 2019\APPS\APLIKASI PENDAFTARAN & RAJAL_IGD\fotoBerkas\KTP'+cxlblNoRekamedis.Caption+'.jpg');
imgFotoBerkas.Picture.SaveToFile('\\simrs_02\New folder\kelengkapan Pengembangan\_NEW SIMRS 2019\APPS\APLIKASI PENDAFTARAN & RAJAL_IGD\fotoBerkas\PJM'+cxlblNoRekamedis.Caption+'.jpg');

if  qryt_fotoberkas.Locate('noRekamedis',cxlblNoRekamedis.Caption,[]) then
  begin
    with qryt_fotoberkas do
    begin
      Locate('noRekamedis',cxlblNoRekamedis.Caption,[]);
      Edit;
      qryt_fotoberkas.FieldByName('noRekamedis').AsString := cxlblNoRekamedis.Caption;
      qryt_fotoberkas.FieldByName('namaPasien').AsString := cxlblNamaPasien.Caption;
      //tblobfield(qryt_fotoberkas.fieldbyname('fotoProfil')).LoadFromStream(stream);
      //tblobfield(qryt_fotoberkas.fieldbyname('fotoPenjamin')).LoadFromStream(stream1);
      qryt_fotoberkas.FieldByName('fotoProfil').AsString := 'KTP'+cxlblNoRekamedis.Caption+'.jpg';
      qryt_fotoberkas.FieldByName('fotoPenjamin').AsString := 'PJM'+cxlblNoRekamedis.Caption+'.jpg';
      Post;
    end;
    MessageDlg('Foto Berhasil Di Simpan',mtInformation,[mbOK],0);
  end
else
  begin
    qryt_fotoberkas.Append;
    qryt_fotoberkas.FieldByName('noRekamedis').AsString := cxlblNoRekamedis.Caption;
    qryt_fotoberkas.FieldByName('namaPasien').AsString := cxlblNamaPasien.Caption;
    ///tblobfield(qryt_fotoberkas.fieldbyname('fotoProfil')).LoadFromStream(stream);
    ///tblobfield(qryt_fotoberkas.fieldbyname('fotoPenjamin')).LoadFromStream(stream1);
    qryt_fotoberkas.FieldByName('fotoProfil').AsString := 'KTP'+cxlblNoRekamedis.Caption+'.jpg';
    qryt_fotoberkas.FieldByName('fotoPenjamin').AsString := 'PJM'+cxlblNoRekamedis.Caption+'.jpg';

    qryt_fotoberkas.post;
    MessageDlg('Foto Berhasil Di Simpan',mtInformation,[mbOK],0);
  end;
end;

procedure TFFotoBerkas.FormShow(Sender: TObject);
begin
SimpanDirektory;
with qryt_fotoberkas do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_fotoberkas where noRekamedis="'+cxlblNoRekamedis.Caption+'"';
  Open;
end;
if qryt_fotoberkas.RecordCount >= 1 then
begin
  imgFotoProfil.Picture.LoadFromFile('\\simrs_02\New folder\kelengkapan Pengembangan\_NEW SIMRS 2019\APPS\APLIKASI PENDAFTARAN & RAJAL_IGD\fotoBerkas\'+qryt_fotoberkas.FieldByName('fotoProfil').AsString);
  imgFotoBerkas.Picture.LoadFromFile('\\simrs_02\New folder\kelengkapan Pengembangan\_NEW SIMRS 2019\APPS\APLIKASI PENDAFTARAN & RAJAL_IGD\fotoBerkas\'+qryt_fotoberkas.FieldByName('fotoPenjamin').AsString);
end
else
begin
  imgFotoProfil.Picture.Graphic := nil;
  imgFotoBerkas.Picture.Graphic := nil;
end;
end;

end.
