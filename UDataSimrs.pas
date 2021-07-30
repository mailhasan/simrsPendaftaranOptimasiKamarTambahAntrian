unit UDataSimrs;

interface

uses
  SysUtils, Classes, DB, ADODB, ZAbstractConnection, ZConnection;

type
  TDataSimrs = class(TDataModule)
    conSimrs: TADOConnection;
    qryt_registrasi: TADOQuery;
    qryVwPasien: TADOQuery;
    dsVwPasien: TDataSource;
    qryt_komputer: TADOQuery;
    dst_komputer: TDataSource;
    qryvw_pasienrawatjalan: TADOQuery;
    dsvw_pasienrawatjalan: TDataSource;
    qryt_registrasirawatjalan: TADOQuery;
    qrywv_unitrajal: TADOQuery;
    dswv_unitrajal: TDataSource;
    qryVw_AsalPasien: TADOQuery;
    dsVw_dsAsalPasien: TDataSource;
    qryCaraBayar: TADOQuery;
    dsCaraBayar: TDataSource;
    qryPenjamin: TADOQuery;
    dsPenjamin: TDataSource;
    qryJumlahKunjungan: TADOQuery;
    qryDokter: TADOQuery;
    dsDokter: TDataSource;
    qryNoRmPasien: TADOQuery;
    qryt_allindonesia: TADOQuery;
    qryvw_pendidikan: TADOQuery;
    strngfld_pendidikankdPendidikan: TStringField;
    strngfld_pendidikanpendidikan: TStringField;
    dsvw_Pendidikan: TDataSource;
    qryvw_pekerjaan: TADOQuery;
    dsvw_pekerjaan: TDataSource;
    qryvw_agama: TADOQuery;
    dsvw_agama: TDataSource;
    qryDetailPasien: TADOQuery;
    qryvw_bahasa: TADOQuery;
    dsvw_bahasa: TDataSource;
    qryt_tindakanpasienrajal: TADOQuery;
    qryt_pemakai: TADOQuery;
    qryt_aksesmenu: TADOQuery;
    qryvw_pasienrawatinap: TADOQuery;
    dsvw_pasienrawatinap: TDataSource;
    qryvw_datarawatinap: TADOQuery;
    dsvw_datarawatinap: TDataSource;
    qryt_registrasirawatinap: TADOQuery;
    qryt_tindakanpasienranap: TADOQuery;
    qryTarifRawatInap: TADOQuery;
    qryKunjunganRajal: TADOQuery;
    dsKunjunganRajalIgd: TDataSource;
    qryKelas: TADOQuery;
    dsKelas: TDataSource;
    dst_allindonesia: TDataSource;
    qryJadwalKontrolPasien: TADOQuery;
    dsJadwalKontrolPasien: TDataSource;
    qryt_antrianpoli: TADOQuery;
    dst_antrianpoli: TDataSource;
    qryt_fotoberkas: TADOQuery;
    dst_fotoberkas: TDataSource;
    qryt_bridingsep: TADOQuery;
    qrybridging_rujukan_bpjs: TADOQuery;
    qryPasienRanapLebih3jam: TADOQuery;
    qryt_settinglinkapplainpendaftaran: TADOQuery;
    qryt_maritalStatus: TADOQuery;
    dst_maritalStatus: TDataSource;
    conSimrs1: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataSimrs: TDataSimrs;

implementation

{$R *.dfm}
uses UPendaftaran;

end.
