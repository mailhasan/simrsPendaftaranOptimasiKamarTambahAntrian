object DataSimrs: TDataSimrs
  OldCreateOrder = False
  Left = 191
  Top = 125
  Height = 880
  Width = 1381
  object conSimrs: TADOConnection
    Connected = True
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=simrs'
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object qryt_registrasi: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_registrasi limit 20')
    Left = 48
    Top = 88
  end
  object qryVwPasien: TADOQuery
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'#10' *  '#10'FROM'#10' t_pasien LIMIT 20')
    Left = 56
    Top = 152
  end
  object dsVwPasien: TDataSource
    DataSet = qryVwPasien
    Left = 112
    Top = 168
  end
  object qryt_komputer: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_komputer')
    Left = 40
    Top = 224
  end
  object dst_komputer: TDataSource
    DataSet = qryt_komputer
    Left = 120
    Top = 224
  end
  object qryvw_pasienrawatjalan: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vw_pasienrawatjalan limit 20')
    Left = 48
    Top = 280
  end
  object dsvw_pasienrawatjalan: TDataSource
    DataSet = qryvw_pasienrawatjalan
    Left = 168
    Top = 280
  end
  object qryt_registrasirawatjalan: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_registrasirawatjalan limit 20')
    Left = 48
    Top = 336
  end
  object qrywv_unitrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vw_unitrajal')
    Left = 48
    Top = 392
  end
  object dswv_unitrajal: TDataSource
    DataSet = qrywv_unitrajal
    Left = 128
    Top = 392
  end
  object qryVw_AsalPasien: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * from vw_asalpasien')
    Left = 56
    Top = 456
  end
  object dsVw_dsAsalPasien: TDataSource
    DataSet = qryVw_AsalPasien
    Left = 128
    Top = 472
  end
  object qryCaraBayar: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_carabayar ORDER BY kdCaraBayar ASC')
    Left = 56
    Top = 512
  end
  object dsCaraBayar: TDataSource
    DataSet = qryCaraBayar
    Left = 120
    Top = 528
  end
  object qryPenjamin: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_penjamin')
    Left = 56
    Top = 560
  end
  object dsPenjamin: TDataSource
    DataSet = qryPenjamin
    Left = 112
    Top = 576
  end
  object qryJumlahKunjungan: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vw_jumlahkunjunganpasien')
    Left = 56
    Top = 624
  end
  object qryDokter: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_tenagamedis2.kdPetugasMedis,'
      't_tenagamedis2.namapetugasMedis,'
      't_tenagamedis2.kdKelompokTenagaMedis,'
      't_kelompoktenagamedis.KelompokTenagaMedis'
      'FROM'
      't_kelompoktenagamedis'
      
        'INNER JOIN t_tenagamedis2 ON t_tenagamedis2.kdKelompokTenagaMedi' +
        's = t_kelompoktenagamedis.kdKelompokTenagaMedis'
      'WHERE'
      't_tenagamedis2.kdKelompokTenagaMedis'
      '= '#39'ktm1'#39' ')
    Left = 48
    Top = 688
  end
  object dsDokter: TDataSource
    DataSet = qryDokter
    Left = 104
    Top = 688
  end
  object qryNoRmPasien: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from noRmPasien')
    Left = 144
    Top = 32
  end
  object qryt_allindonesia: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select id,provinsi,kabKota, kabKotaNama, kecamatan,kelurahan, ko' +
        'dePos from t_allindonesia')
    Left = 224
    Top = 48
  end
  object qryvw_pendidikan: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vw_pendidikan')
    Left = 152
    Top = 104
    object strngfld_pendidikankdPendidikan: TStringField
      FieldName = 'kdPendidikan'
      Size = 5
    end
    object strngfld_pendidikanpendidikan: TStringField
      FieldName = 'pendidikan'
    end
  end
  object dsvw_Pendidikan: TDataSource
    DataSet = qryvw_pendidikan
    Left = 224
    Top = 120
  end
  object qryvw_pekerjaan: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vw_pekerjaan')
    Left = 192
    Top = 176
  end
  object dsvw_pekerjaan: TDataSource
    DataSet = qryvw_pekerjaan
    Left = 256
    Top = 200
  end
  object qryvw_agama: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_agama')
    Left = 248
    Top = 256
  end
  object dsvw_agama: TDataSource
    DataSet = qryvw_agama
    Left = 304
    Top = 280
  end
  object qryDetailPasien: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_detailpasien')
    Left = 184
    Top = 336
  end
  object qryvw_bahasa: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vw_bahasa')
    Left = 200
    Top = 400
  end
  object dsvw_bahasa: TDataSource
    DataSet = qryvw_bahasa
    Left = 272
    Top = 416
  end
  object qryt_tindakanpasienrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_tindakanpasienrajal')
    Left = 240
    Top = 480
  end
  object qryt_pemakai: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_pemakai')
    Left = 456
    Top = 56
  end
  object qryt_aksesmenu: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_aksesmenu')
    Left = 456
    Top = 120
  end
  object qryvw_pasienrawatinap: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vw_pasienrawatinap')
    Left = 456
    Top = 192
  end
  object dsvw_pasienrawatinap: TDataSource
    DataSet = qryvw_pasienrawatinap
    Left = 576
    Top = 200
  end
  object qryvw_datarawatinap: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vw_datarawatinap')
    Left = 48
    Top = 752
  end
  object dsvw_datarawatinap: TDataSource
    DataSet = qryvw_datarawatinap
    Left = 120
    Top = 776
  end
  object qryt_registrasirawatinap: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_registrasirawatinap')
    Left = 456
    Top = 256
  end
  object qryt_tindakanpasienranap: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_tindakanpasienranap')
    Left = 464
    Top = 312
  end
  object qryTarifRawatInap: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_tarifkelaskamar')
    Left = 432
    Top = 376
  end
  object qryKunjunganRajal: TADOQuery
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select COUNT(noDaftar) as Jumlah, unit from vw_pasienrawatjalan ' +
        'GROUP BY  unit')
    Left = 960
    Top = 80
  end
  object dsKunjunganRajalIgd: TDataSource
    DataSet = qryKunjunganRajal
    Left = 1072
    Top = 80
  end
  object qryKelas: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM t_kelas')
    Left = 232
    Top = 552
  end
  object dsKelas: TDataSource
    DataSet = qryKelas
    Left = 288
    Top = 552
  end
  object dst_allindonesia: TDataSource
    DataSet = qryt_allindonesia
    Left = 312
    Top = 48
  end
  object qryJadwalKontrolPasien: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    `t_jadwalkontrolpasienrajal`.`IDJadwalKontrolPasienRajal`'
      '    , `t_jadwalkontrolpasienrajal`.`noRekamedis`'
      '    , `t_pasien`.`nmPasien`'
      '    , `t_pasien`.`tempatLahir`'
      '    , `t_pasien`.`tglLahir`'
      '    , `t_pasien`.`alamat`'
      '    , `t_jadwalkontrolpasienrajal`.`unit`'
      '    , `t_jadwalkontrolpasienrajal`.`namapetugasMedis`'
      
        '    , `t_jadwalkontrolpasienrajal`.`tglJadwalKontrolPasienRajal`' +
        ' , statusKontrol'
      'FROM'
      '    `t_pasien`'
      '    INNER JOIN `t_jadwalkontrolpasienrajal` '
      
        '        ON (`t_pasien`.`noRekamedis` = `t_jadwalkontrolpasienraj' +
        'al`.`noRekamedis`);')
    Left = 440
    Top = 448
  end
  object dsJadwalKontrolPasien: TDataSource
    DataSet = qryJadwalKontrolPasien
    Left = 536
    Top = 464
  end
  object qryt_antrianpoli: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_antrianpoli')
    Left = 424
    Top = 552
  end
  object dst_antrianpoli: TDataSource
    DataSet = qryt_antrianpoli
    Left = 504
    Top = 552
  end
end
