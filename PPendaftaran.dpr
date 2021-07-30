program PPendaftaran;

uses
  Forms,
  UPendaftaran in 'UPendaftaran.pas' {FPendaftaran},
  UDataSimrs in 'UDataSimrs.pas' {DataSimrs: TDataModule},
  UDataPendaftaranPasien in 'UDataPendaftaranPasien.pas' {FDataPendaftaranPasien},
  UDataPasienBaru in 'UDataPasienBaru.pas' {FDataPasienBaru},
  UDaftarBiodataPx in 'UDaftarBiodataPx.pas' {FDaftarDataBiodataPasien},
  UEditBiodataPasien in 'UEditBiodataPasien.pas' {FEditBiodataPasien},
  UDaftarPasienRawatJalanHariIni in 'UDaftarPasienRawatJalanHariIni.pas' {FDaftarPasienHariIniRajal},
  UEditPenjaminDataPasien in 'UEditPenjaminDataPasien.pas' {FEditPenjaminDataPasien},
  ULoginSimrs in 'ULoginSimrs.pas' {FLoginSimrs},
  USettingPrinter in 'USettingPrinter.pas' {FSettingPrinter},
  URiwayatKunjunganPasien in 'URiwayatKunjunganPasien.pas' {FRiwayatKunjunganPasien},
  UPendaftaranPasienIgdRanap in 'UPendaftaranPasienIgdRanap.pas' {FPendaftaranPasienRawatInap},
  UKoreksiKeluargaPasien in 'UKoreksiKeluargaPasien.pas' {FKoreksiKeluargaPasien1},
  UDataDaftarPasienIgd in 'UDataDaftarPasienIgd.pas' {FDataDaftarPasienIgd},
  UEditPenjaminIGD in 'UEditPenjaminIGD.pas' {FEditPenjaminIGD},
  UDaftarPasienRawatInap in 'UDaftarPasienRawatInap.pas' {FDaftarPasienRawatInap},
  UDaftarDataPasienHariIniRanap in 'UDaftarDataPasienHariIniRanap.pas' {FDaftarDataPasienRanap},
  UGantiKamarRawatInap in 'UGantiKamarRawatInap.pas' {FGantiKamarRawatInap},
  UDataPasienBaruIgd in 'UDataPasienBaruIgd.pas' {FDataPasienBaruIgd},
  UCariKamarRawatInap in 'UCariKamarRawatInap.pas' {FCariKamarRawatInap},
  UInformasiKetersedianRawatInap in 'UInformasiKetersedianRawatInap.pas' {FInformasiKetersedianRawatInap},
  ULaporan in 'ULaporan.pas' {FLAPORAN},
  UKelas in 'UKelas.pas' {FKelas},
  UJawalKontrolPasienPerjanjian in 'UJawalKontrolPasienPerjanjian.pas' {FJadwalKontrolPasienPerjanjian},
  UBpjs in 'UBpjs.pas' {FBpjs},
  UKonseksiBridingBpjs in 'UKonseksiBridingBpjs.pas' {FKonseksiBridingBpjs},
  URujukanManualBpjs in 'URujukanManualBpjs.pas' {FRujukanManual},
  UUpdatePulangSep in 'UUpdatePulangSep.pas' {FUpdatePulangSep},
  URujukanSep in 'URujukanSep.pas' {FRujukanSep},
  UFotoBerkas in 'UFotoBerkas.pas' {FFotoBerkas},
  UPrintRespInsertSep in 'UPrintRespInsertSep.pas' {FPrintRespSep},
  UResponseManual in 'UResponseManual.pas' {FResponseManual},
  URujukan in 'URujukan.pas' {FRujukan},
  UCekVersiAplikasi in 'UCekVersiAplikasi.pas' {FCekVersiUpdate},
  ULinkAppLainya in 'ULinkAppLainya.pas' {FLinkAppLainya},
  URuangPinere in 'URuangPinere.pas' {FRuangPinere};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFLoginSimrs, FLoginSimrs);
  Application.CreateForm(TFPendaftaran, FPendaftaran);
  Application.CreateForm(TFPendaftaranPasienRawatInap, FPendaftaranPasienRawatInap);
  Application.CreateForm(TFRujukanSep, FRujukanSep);
  Application.CreateForm(TFRujukanManual, FRujukanManual);
  Application.CreateForm(TFBpjs, FBpjs);
  Application.CreateForm(TFLAPORAN, FLAPORAN);
  Application.CreateForm(TDataSimrs, DataSimrs);
  Application.CreateForm(TFDataPendaftaranPasien, FDataPendaftaranPasien);
  Application.CreateForm(TFDataPasienBaru, FDataPasienBaru);
  Application.CreateForm(TFDaftarDataBiodataPasien, FDaftarDataBiodataPasien);
  Application.CreateForm(TFEditBiodataPasien, FEditBiodataPasien);
  Application.CreateForm(TFDaftarPasienHariIniRajal, FDaftarPasienHariIniRajal);
  Application.CreateForm(TFEditPenjaminDataPasien, FEditPenjaminDataPasien);
  Application.CreateForm(TFSettingPrinter, FSettingPrinter);
  Application.CreateForm(TFRiwayatKunjunganPasien, FRiwayatKunjunganPasien);
  Application.CreateForm(TFKoreksiKeluargaPasien1, FKoreksiKeluargaPasien1);
  Application.CreateForm(TFDataDaftarPasienIgd, FDataDaftarPasienIgd);
  Application.CreateForm(TFEditPenjaminIGD, FEditPenjaminIGD);
  Application.CreateForm(TFDaftarPasienRawatInap, FDaftarPasienRawatInap);
  Application.CreateForm(TFDaftarDataPasienRanap, FDaftarDataPasienRanap);
  Application.CreateForm(TFGantiKamarRawatInap, FGantiKamarRawatInap);
  Application.CreateForm(TFDataPasienBaruIgd, FDataPasienBaruIgd);
  Application.CreateForm(TFCariKamarRawatInap, FCariKamarRawatInap);
  Application.CreateForm(TFInformasiKetersedianRawatInap, FInformasiKetersedianRawatInap);
  Application.CreateForm(TFKelas, FKelas);
  Application.CreateForm(TFJadwalKontrolPasienPerjanjian, FJadwalKontrolPasienPerjanjian);
  Application.CreateForm(TFKonseksiBridingBpjs, FKonseksiBridingBpjs);
  Application.CreateForm(TFUpdatePulangSep, FUpdatePulangSep);
  Application.CreateForm(TFFotoBerkas, FFotoBerkas);
  Application.CreateForm(TFPrintRespSep, FPrintRespSep);
  Application.CreateForm(TFResponseManual, FResponseManual);
  Application.CreateForm(TFRujukan, FRujukan);
  Application.CreateForm(TFCekVersiUpdate, FCekVersiUpdate);
  Application.CreateForm(TFLinkAppLainya, FLinkAppLainya);
  Application.CreateForm(TFRuangPinere, FRuangPinere);
  Application.Run;
end.
