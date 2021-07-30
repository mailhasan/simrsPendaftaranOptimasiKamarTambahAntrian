object FRujukanManual: TFRujukanManual
  Left = 993
  Top = 80
  Width = 780
  Height = 942
  Caption = 'RUJUKAN MANUAL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 881
    Height = 81
    Align = alTop
    TabOrder = 0
    object lblPELAYANAN: TLabel
      Left = 8
      Top = 8
      Width = 64
      Height = 13
      Caption = 'PELAYANAN'
    end
    object lblTGLPELAYANAN: TLabel
      Left = 8
      Top = 32
      Width = 88
      Height = 13
      Caption = 'TGL PELAYANAN'
    end
    object lblNOMERRUJUKAN_MANUAL: TLabel
      Left = 264
      Top = 40
      Width = 142
      Height = 13
      Caption = 'NOMER RUJUKAN MANUAL'
    end
    object lblPPKASALPESERTA: TLabel
      Left = 272
      Top = 16
      Width = 104
      Height = 13
      Caption = 'PPK ASAL PESERTA'
    end
    object lblJenisNomer: TLabel
      Left = 328
      Top = 64
      Width = 73
      Height = 13
      Caption = 'JENIS NOMER'
    end
    object lblFASKESRUJUKAN: TLabel
      Left = 8
      Top = 56
      Width = 95
      Height = 13
      Caption = 'FASKES RUJUKAN'
    end
    object dtpTGLPELAYANAN: TDateTimePicker
      Left = 112
      Top = 32
      Width = 153
      Height = 21
      Date = 44116.657954872690000000
      Time = 44116.657954872690000000
      TabOrder = 0
      OnKeyPress = dtpTGLPELAYANANKeyPress
    end
    object cbbPELAYANANRJKMANUAL: TComboBox
      Left = 112
      Top = 8
      Width = 153
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'cbbPELAYANANRJKMANUAL'
      OnKeyPress = cbbPELAYANANRJKMANUALKeyPress
      Items.Strings = (
        'RAWAT JALAN'
        'RAWAT INAP')
    end
    object edtNOMERRUJUKANMANUAL: TEdit
      Left = 416
      Top = 32
      Width = 217
      Height = 21
      TabOrder = 2
      Text = 'edtNOMERRUJUKANMANUAL'
    end
    object edtPPKASALPESERTA: TEdit
      Left = 416
      Top = 8
      Width = 201
      Height = 21
      TabOrder = 3
      Text = 'edtPPKASALPESERTA'
      OnDblClick = edtPPKASALPESERTADblClick
      OnKeyPress = edtPPKASALPESERTAKeyPress
    end
    object btnCARIMANUAL: TButton
      Left = 568
      Top = 56
      Width = 75
      Height = 25
      Caption = 'CARI'
      TabOrder = 4
      OnClick = btnCARIMANUALClick
    end
    object edtKodePpk: TEdit
      Left = 616
      Top = 8
      Width = 81
      Height = 21
      TabOrder = 5
      Text = 'edtKodePpk'
    end
    object cbbCaraBayar: TComboBox
      Left = 416
      Top = 56
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        'BPJS'
        'NIK'
        'E-KTP')
    end
    object cbbFASKES: TComboBox
      Left = 112
      Top = 56
      Width = 137
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 7
      Text = 'cbbFASKES'
      Items.Strings = (
        'FASKES 1'
        'FASKES 2(RS)')
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 81
    Width = 881
    Height = 805
    Align = alClient
    TabOrder = 1
    object lblWAJIBDISIMANUAL: TLabel
      Left = 8
      Top = 176
      Width = 70
      Height = 13
      Caption = '* WAJIB DI ISI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object lblTGLSEPMANUAL: TLabel
      Left = 80
      Top = 248
      Width = 52
      Height = 13
      Caption = 'TGL SEP *'
    end
    object lblSTATUSKECELAKAANMANUAL: TLabel
      Left = 24
      Top = 392
      Width = 123
      Height = 13
      Caption = 'STATUS KECELAKAAN *'
    end
    object lblSPESIALSISSUBSPMANUAL: TLabel
      Left = 8
      Top = 192
      Width = 131
      Height = 13
      Caption = 'lSPESIALSI/SUBSPEALIS*'
    end
    object lblNOTELEPONMANUAL: TLabel
      Left = 56
      Top = 320
      Width = 76
      Height = 13
      Caption = 'NO TELEPON *'
    end
    object lblNORMMANUAL: TLabel
      Left = 80
      Top = 272
      Width = 43
      Height = 13
      Caption = 'NO RM *'
    end
    object lblDPJPMANUAL: TLabel
      Left = 32
      Top = 224
      Width = 109
      Height = 13
      Caption = 'DPJP YG MELAYANI *'
    end
    object lblDIAGNOSAMANUAL: TLabel
      Left = 24
      Top = 296
      Width = 111
      Height = 13
      Caption = 'DIAGNOSA MANUAL *'
    end
    object lblCATATANMANUAL: TLabel
      Left = 32
      Top = 360
      Width = 105
      Height = 13
      Caption = 'CATATAN MANUAL *'
    end
    object mmoCATATANMANUAL: TMemo
      Left = 152
      Top = 344
      Width = 361
      Height = 41
      Lines.Strings = (
        'mmoCATATANMANUAL')
      TabOrder = 0
      OnKeyPress = mmoCATATANMANUALKeyPress
    end
    object lstKodeProvinsiManual: TListBox
      Left = 865
      Top = 608
      Width = 41
      Height = 137
      ItemHeight = 13
      TabOrder = 1
      Visible = False
    end
    object lstKodeKabKotaManual: TListBox
      Left = 801
      Top = 488
      Width = 40
      Height = 105
      ItemHeight = 13
      TabOrder = 2
      Visible = False
    end
    object grpSTATUSKECELAKAANMANUAL: TGroupBox
      Left = 24
      Top = 416
      Width = 425
      Height = 217
      Caption = 'STATUS KECELAKAAN'
      TabOrder = 3
      object lblTGLKEJADIANMANUAL: TLabel
        Left = 8
        Top = 32
        Width = 76
        Height = 13
        Caption = 'TGL KEJADIAN'
      end
      object lblLOKASIKEJADIANMANUAL: TLabel
        Left = 8
        Top = 64
        Width = 93
        Height = 13
        Caption = 'LOKASI KEJADIAN'
      end
      object lblKETERANGANKEJADIANMANUAL: TLabel
        Left = 8
        Top = 144
        Width = 74
        Height = 13
        Caption = 'KETERANGAN'
      end
      object edtPROVINSIMANUAL: TEdit
        Left = 128
        Top = 56
        Width = 225
        Height = 21
        TabOrder = 0
        Text = 'edtPROVINSIMANUAL'
        OnClick = edtPROVINSIMANUALClick
        OnKeyPress = edtPROVINSIMANUALKeyPress
      end
      object edtKABKOTAMANUAL: TEdit
        Left = 128
        Top = 80
        Width = 225
        Height = 21
        TabOrder = 1
        Text = 'edtKABKOTAMANUAL'
        OnClick = edtKABKOTAMANUALClick
        OnKeyPress = edtKABKOTAMANUALKeyPress
      end
      object edtKECAMMANUAL: TEdit
        Left = 128
        Top = 104
        Width = 225
        Height = 21
        TabOrder = 2
        Text = 'edtKECAMMANUAL'
        OnClick = edtKECAMMANUALClick
        OnKeyPress = edtKECAMMANUALKeyPress
      end
      object mmoKETMANUAL: TMemo
        Left = 128
        Top = 128
        Width = 225
        Height = 57
        Lines.Strings = (
          'mmoKETMANUAL')
        TabOrder = 3
      end
      object edtKodeProvinsiManual: TEdit
        Left = 360
        Top = 56
        Width = 49
        Height = 21
        TabOrder = 4
        Text = 'edtKodeProvinsiManual'
      end
      object edtKodeKabKotaManual: TEdit
        Left = 360
        Top = 80
        Width = 49
        Height = 21
        TabOrder = 5
        Text = 'edtKodeKabKotaManual'
      end
      object edtKodeKecamatan: TEdit
        Left = 368
        Top = 104
        Width = 41
        Height = 21
        TabOrder = 6
        Text = 'edtKodeKecamatan'
      end
      object cxdtdtTGLKEJADIANMANUAL: TcxDateEdit
        Left = 128
        Top = 24
        TabOrder = 7
        Width = 225
      end
    end
    object edtSUBSPEALISMANUAL: TEdit
      Left = 256
      Top = 192
      Width = 241
      Height = 21
      Enabled = False
      TabOrder = 4
      Text = 'edtSUBSPEALISMANUAL'
    end
    object edtNOTELEPONEMANUAL: TEdit
      Left = 152
      Top = 320
      Width = 185
      Height = 21
      TabOrder = 5
      Text = 'edtNOTELEPONEMANUAL'
      OnKeyPress = edtNOTELEPONEMANUALKeyPress
    end
    object edtNORMMANUAL: TEdit
      Left = 152
      Top = 264
      Width = 185
      Height = 21
      TabOrder = 6
      Text = 'edtNORMMANUAL'
      OnKeyPress = edtNORMMANUALKeyPress
    end
    object edtDPJPMANUAL: TEdit
      Left = 152
      Top = 216
      Width = 345
      Height = 21
      TabOrder = 7
      Text = 'edtDPJPMANUAL'
      OnClick = edtDPJPMANUALClick
      OnKeyPress = edtDPJPMANUALKeyPress
    end
    object edtDIAGNOSAMANUAL: TEdit
      Left = 152
      Top = 296
      Width = 345
      Height = 21
      TabOrder = 8
      Text = 'edtDIAGNOSAMANUAL'
      OnKeyPress = edtDIAGNOSAMANUALKeyPress
    end
    object dtpTGLSEPMANUAL: TDateTimePicker
      Left = 152
      Top = 240
      Width = 137
      Height = 21
      Date = 44116.689652581020000000
      Time = 44116.689652581020000000
      Enabled = False
      TabOrder = 9
      OnKeyPress = dtpTGLSEPMANUALKeyPress
    end
    object chkPESERTAMANUAL: TCheckBox
      Left = 344
      Top = 272
      Width = 97
      Height = 17
      Caption = 'PESERTA COB'
      TabOrder = 10
    end
    object chkEXECUTIVEMANUAL: TCheckBox
      Left = 152
      Top = 192
      Width = 97
      Height = 17
      Caption = 'EXECUTIVE'
      TabOrder = 11
    end
    object cbbSTATUSKECELAKAANMANUAL: TComboBox
      Left = 152
      Top = 392
      Width = 361
      Height = 21
      ItemHeight = 13
      TabOrder = 12
      Text = 'cbbSTATUSKECELAKAANMANUAL'
      OnKeyPress = cbbSTATUSKECELAKAANMANUALKeyPress
      Items.Strings = (
        'BUKAN KECELAKAAN'
        'KECELAKAAN LALU LINTAS DAN BUKAN KECELAKAAN KERJA'
        'KECELAKAAN LALU LINTAS DAN KECELAKAAN KERJA'
        'KECELAKAAN KERJA')
    end
    object btnSIMPANMANUAL: TButton
      Left = 520
      Top = 608
      Width = 65
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 13
      OnClick = btnSIMPANMANUALClick
    end
    object btnBARUMANUAL: TButton
      Left = 456
      Top = 608
      Width = 65
      Height = 25
      Caption = 'BARU'
      TabOrder = 14
      OnClick = btnBARUMANUALClick
    end
    object cxgrpbxDataPeserta: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'Data Peserta'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 15
      Height = 176
      Width = 879
      object lblNAMAPESERTA: TLabel
        Left = 8
        Top = 16
        Width = 109
        Height = 16
        Caption = 'lblNAMAPESERTA'
      end
      object lblNOBPJS: TLabel
        Left = 8
        Top = 40
        Width = 61
        Height = 16
        Caption = 'lblNOBPJS'
      end
      object lblNOMERBPJS: TLabel
        Left = 304
        Top = 40
        Width = 88
        Height = 16
        Caption = 'lblNOMERBPJS'
      end
      object lblTGLLAHIR: TLabel
        Left = 8
        Top = 64
        Width = 76
        Height = 16
        Caption = 'lblTGLLAHIR'
      end
      object lblSTATUSKEPESERTAAN: TLabel
        Left = 304
        Top = 64
        Width = 151
        Height = 16
        Caption = 'lblSTATUSKEPESERTAAN'
      end
      object lblKELAS: TLabel
        Left = 8
        Top = 112
        Width = 54
        Height = 16
        Caption = 'lblKELAS'
      end
      object lblFASKES: TLabel
        Left = 8
        Top = 140
        Width = 61
        Height = 16
        Caption = 'lblFASKES'
      end
      object lblTGLCETAK: TLabel
        Left = 304
        Top = 92
        Width = 76
        Height = 16
        Caption = 'lblTGLCETAK'
      end
      object lblJENISKARTU: TLabel
        Left = 304
        Top = 116
        Width = 90
        Height = 16
        Caption = 'lblJENISKARTU'
      end
      object lblUmur: TLabel
        Left = 8
        Top = 88
        Width = 47
        Height = 16
        Caption = 'lblUmur'
      end
      object lblNORAWAT: TLabel
        Left = 304
        Top = 144
        Width = 70
        Height = 16
        Caption = 'NO RAWAT'
      end
      object edtNamaPeserta: TEdit
        Left = 128
        Top = 16
        Width = 297
        Height = 24
        TabOrder = 0
        Text = 'edtNamaPeserta'
      end
      object edtNoNik: TEdit
        Left = 128
        Top = 40
        Width = 169
        Height = 24
        TabOrder = 1
        Text = 'edtNoNik'
      end
      object edtTglLahir: TEdit
        Left = 128
        Top = 64
        Width = 169
        Height = 24
        TabOrder = 2
        Text = 'edtTglLahir'
      end
      object edtUmur: TEdit
        Left = 128
        Top = 88
        Width = 169
        Height = 24
        TabOrder = 3
        Text = 'edtUmur'
      end
      object edtKelas: TEdit
        Left = 128
        Top = 112
        Width = 121
        Height = 24
        TabOrder = 4
        Text = 'edtKelas'
      end
      object edtKodeKelas: TEdit
        Left = 248
        Top = 112
        Width = 49
        Height = 24
        TabOrder = 5
        Text = 'edtKodeKelas'
      end
      object edtJK: TEdit
        Left = 424
        Top = 16
        Width = 33
        Height = 24
        TabOrder = 6
        Text = 'edtJK'
      end
      object edtNoBpjs: TEdit
        Left = 400
        Top = 40
        Width = 241
        Height = 24
        TabOrder = 7
        Text = 'edtNoBpjs'
      end
      object edtStatusKepesertaan: TEdit
        Left = 464
        Top = 64
        Width = 177
        Height = 24
        TabOrder = 8
        Text = 'edtStatusKepesertaan'
      end
      object edtTglCetak: TEdit
        Left = 464
        Top = 88
        Width = 177
        Height = 24
        TabOrder = 9
        Text = 'edtTglCetak'
      end
      object edtJenisKartu: TEdit
        Left = 464
        Top = 112
        Width = 177
        Height = 24
        TabOrder = 10
        Text = 'edtJenisKartu'
      end
      object edtNORAWAT: TEdit
        Left = 408
        Top = 136
        Width = 233
        Height = 24
        TabOrder = 11
      end
    end
    object lstPROVINSIMANUAL: TListBox
      Left = 160
      Top = 496
      Width = 265
      Height = 161
      ItemHeight = 13
      TabOrder = 16
      Visible = False
      OnDblClick = lstPROVINSIMANUALDblClick
      OnKeyPress = lstPROVINSIMANUALKeyPress
    end
    object lstKECMANUAL: TListBox
      Left = 162
      Top = 521
      Width = 265
      Height = 177
      ItemHeight = 13
      TabOrder = 17
      Visible = False
      OnDblClick = lstKECMANUALDblClick
      OnKeyPress = lstKECMANUALKeyPress
    end
    object edtKodeSubSpealis: TEdit
      Left = 504
      Top = 192
      Width = 113
      Height = 21
      Enabled = False
      TabOrder = 18
      Text = 'IGD'
    end
    object edtKodeDiagnosa: TEdit
      Left = 504
      Top = 296
      Width = 121
      Height = 21
      TabOrder = 19
      Text = 'edtKodeDiagnosa'
    end
    object lstDPJPMANUAL: TListBox
      Left = 152
      Top = 240
      Width = 345
      Height = 153
      ItemHeight = 13
      TabOrder = 20
      Visible = False
      OnClick = lstDPJPMANUALClick
      OnKeyPress = lstDPJPMANUALKeyPress
    end
    object lstDiagnosaManual: TListBox
      Left = 152
      Top = 320
      Width = 473
      Height = 105
      ItemHeight = 13
      TabOrder = 21
      Visible = False
      OnDblClick = lstDiagnosaManualDblClick
      OnKeyPress = lstDiagnosaManualKeyPress
    end
    object lstKABKOTAMANUAL: TListBox
      Left = 160
      Top = 520
      Width = 265
      Height = 129
      ItemHeight = 13
      TabOrder = 22
      Visible = False
      OnDblClick = lstKABKOTAMANUALDblClick
      OnKeyPress = lstKABKOTAMANUALKeyPress
    end
    object lstKodeDiagnosa: TListBox
      Left = 824
      Top = 336
      Width = 57
      Height = 145
      ItemHeight = 13
      TabOrder = 23
      Visible = False
    end
    object lstKodeKecamatan: TListBox
      Left = 808
      Top = 600
      Width = 25
      Height = 137
      ItemHeight = 13
      TabOrder = 24
    end
    object lstKodeDpjp: TListBox
      Left = 848
      Top = 192
      Width = 49
      Height = 153
      ItemHeight = 13
      TabOrder = 25
    end
    object edtKodeDpjp: TEdit
      Left = 504
      Top = 216
      Width = 121
      Height = 21
      TabOrder = 26
      Text = 'edtKodeDpjp'
    end
    object grpPENJAMIN: TGroupBox
      Left = 456
      Top = 424
      Width = 201
      Height = 177
      Caption = 'PENJAMIN'
      TabOrder = 27
      Visible = False
      object lblPenjamin: TLabel
        Left = 16
        Top = 128
        Width = 53
        Height = 13
        Caption = 'lblPenjamin'
      end
      object chkJasaraharja: TCheckBox
        Left = 8
        Top = 24
        Width = 97
        Height = 17
        Caption = 'Jasa raharja'
        TabOrder = 0
      end
      object chkBPJSKetenagakerjaan: TCheckBox
        Left = 8
        Top = 48
        Width = 161
        Height = 17
        Caption = 'BPJS Ketenaga kerjaan'
        TabOrder = 1
      end
      object chkTASPEN: TCheckBox
        Left = 8
        Top = 72
        Width = 97
        Height = 17
        Caption = 'TASPEN'
        TabOrder = 2
      end
      object chkASABRI: TCheckBox
        Left = 8
        Top = 96
        Width = 97
        Height = 17
        Caption = 'ASABRI'
        TabOrder = 3
      end
    end
    object btnUBAH: TButton
      Left = 584
      Top = 608
      Width = 65
      Height = 25
      Caption = 'UBAH'
      TabOrder = 28
    end
  end
  object lstPPKASALPESERTAMANUAL: TListBox
    Left = 418
    Top = 32
    Width = 279
    Height = 153
    ItemHeight = 13
    TabOrder = 2
    Visible = False
    OnClick = lstPPKASALPESERTAMANUALClick
    OnKeyPress = lstPPKASALPESERTAMANUALKeyPress
  end
  object lstKodePPK: TListBox
    Left = 824
    Top = 16
    Width = 57
    Height = 153
    ItemHeight = 13
    TabOrder = 3
  end
  object idhtpRujukan: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 616
    Top = 265
  end
  object idhtseppencarian: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 608
    Top = 313
  end
  object idhtpdoktermelayani: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 648
    Top = 369
  end
  object idhtpDiagnosa: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 672
    Top = 289
  end
  object idhtpProvinsi: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 614
    Top = 211
  end
  object idhtpKABKOTA: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 670
    Top = 235
  end
  object idhtpRespInsertSep: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 665
    Top = 626
  end
end
