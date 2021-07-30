object FRujukanSep: TFRujukanSep
  Left = 995
  Top = 73
  Width = 780
  Height = 952
  Caption = 'RUJUKAN SEP'
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
  object pnlTengah: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 913
    Align = alClient
    TabOrder = 0
    object grpAtas: TGroupBox
      Left = 1
      Top = 1
      Width = 762
      Height = 216
      Align = alTop
      Caption = 'RUJUKAN MANUAL / PENCARIAN SEP'
      TabOrder = 0
      object lblJenisNomerSep: TLabel
        Left = 8
        Top = 48
        Width = 77
        Height = 16
        Caption = 'Jenis Nomer'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNOMER: TLabel
        Left = 8
        Top = 72
        Width = 50
        Height = 18
        Caption = 'Nomer'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCariNoSep: TLabel
        Left = 304
        Top = 72
        Width = 68
        Height = 13
        Caption = 'CARI NO SEP'
      end
      object lblNAMAPESERTA: TLabel
        Left = 8
        Top = 96
        Width = 91
        Height = 13
        Caption = 'lblNAMAPESERTA'
      end
      object lblNOBPJS: TLabel
        Left = 8
        Top = 120
        Width = 52
        Height = 13
        Caption = 'lblNOBPJS'
      end
      object lblTGLLAHIR: TLabel
        Left = 8
        Top = 144
        Width = 63
        Height = 13
        Caption = 'lblTGLLAHIR'
      end
      object lblFASKES: TLabel
        Left = 304
        Top = 188
        Width = 51
        Height = 13
        Caption = 'lblFASKES'
      end
      object lblJENISKARTU: TLabel
        Left = 304
        Top = 164
        Width = 77
        Height = 13
        Caption = 'lblJENISKARTU'
      end
      object lblTGLCETAK: TLabel
        Left = 304
        Top = 140
        Width = 66
        Height = 13
        Caption = 'lblTGLCETAK'
      end
      object lblPOLI: TLabel
        Left = 304
        Top = 120
        Width = 34
        Height = 13
        Caption = 'lblPOLI'
      end
      object lblNOMERBPJS: TLabel
        Left = 304
        Top = 96
        Width = 76
        Height = 13
        Caption = 'lblNOMERBPJS'
      end
      object lblUmur: TLabel
        Left = 8
        Top = 168
        Width = 35
        Height = 13
        Caption = 'lblUmur'
      end
      object lblKELAS: TLabel
        Left = 8
        Top = 192
        Width = 44
        Height = 13
        Caption = 'lblKELAS'
      end
      object lblPELAYANAN: TLabel
        Left = 248
        Top = 24
        Width = 64
        Height = 13
        Caption = 'PELAYANAN'
      end
      object lblNORAWAT: TLabel
        Left = 360
        Top = 40
        Width = 59
        Height = 13
        Caption = 'NO RAWAT'
      end
      object cxlblFaskes: TcxLabel
        Left = 8
        Top = 16
        Caption = 'Faskes'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cbbFASKES: TComboBox
        Left = 104
        Top = 16
        Width = 137
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 16
        ParentFont = False
        TabOrder = 1
        Text = 'cbbFASKES'
        Items.Strings = (
          'FASKES 1'
          'FASKES 2(RS)')
      end
      object cbbJenisNomer: TComboBox
        Left = 104
        Top = 40
        Width = 193
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        Text = 'cbbJenisNomer'
        Items.Strings = (
          'NOMER RUJUKAN'
          'NOMER KARTU'
          'NOMER SEP')
      end
      object edtNOMER: TEdit
        Left = 104
        Top = 64
        Width = 193
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = 'edtNOMER'
      end
      object edtNoSepCari: TEdit
        Left = 400
        Top = 64
        Width = 169
        Height = 21
        TabOrder = 4
        Text = 'edtNoSepCari'
      end
      object btnCari: TButton
        Left = 304
        Top = 40
        Width = 49
        Height = 25
        Caption = 'CARI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btnCariClick
      end
      object btnNoSep: TButton
        Left = 576
        Top = 64
        Width = 57
        Height = 25
        Caption = 'NO SEP'
        TabOrder = 6
        OnClick = btnNoSepClick
      end
      object edtNamaPeserta: TEdit
        Left = 104
        Top = 88
        Width = 161
        Height = 21
        TabOrder = 7
        Text = 'edtNamaPeserta'
      end
      object edtNoBpjs: TEdit
        Left = 104
        Top = 112
        Width = 193
        Height = 21
        TabOrder = 8
        Text = 'edtNoBpjs'
      end
      object edtTglLahir: TEdit
        Left = 104
        Top = 136
        Width = 193
        Height = 21
        TabOrder = 9
        Text = 'edtTglLahir'
      end
      object edtUmur: TEdit
        Left = 104
        Top = 160
        Width = 193
        Height = 21
        TabOrder = 10
        Text = 'edtUmur'
      end
      object edtKelas: TEdit
        Left = 104
        Top = 184
        Width = 121
        Height = 21
        TabOrder = 11
        Text = 'edtKelas'
      end
      object edtKodeKelas: TEdit
        Left = 232
        Top = 184
        Width = 65
        Height = 21
        TabOrder = 12
        Text = 'edtKodeKelas'
      end
      object edtNomerBpjs: TEdit
        Left = 400
        Top = 88
        Width = 193
        Height = 21
        TabOrder = 13
        Text = 'edtNomerBpjs'
      end
      object edtPoli: TEdit
        Left = 400
        Top = 112
        Width = 193
        Height = 21
        TabOrder = 14
        Text = 'edtPoli'
      end
      object edtTglCetak: TEdit
        Left = 400
        Top = 136
        Width = 193
        Height = 21
        TabOrder = 15
        Text = 'edtTglCetak'
      end
      object edtJenisKartu: TEdit
        Left = 400
        Top = 160
        Width = 193
        Height = 21
        TabOrder = 16
        Text = 'edtJenisKartu'
      end
      object edtFaskes: TEdit
        Left = 400
        Top = 184
        Width = 193
        Height = 21
        TabOrder = 17
        Text = 'edtFaskes'
      end
      object cbbPELAYANANRJKMANUAL: TComboBox
        Left = 320
        Top = 16
        Width = 153
        Height = 21
        ItemHeight = 13
        TabOrder = 18
        Text = 'cbbPELAYANANRJKMANUAL'
        Items.Strings = (
          'RAWAT JALAN'
          'RAWAT INAP')
      end
      object edtNORAWAT: TEdit
        Left = 432
        Top = 40
        Width = 233
        Height = 24
        TabOrder = 19
      end
      object edtJK: TEdit
        Left = 264
        Top = 88
        Width = 33
        Height = 24
        TabOrder = 20
        Text = 'edtJK'
      end
    end
    object grpWajibDiIsi: TGroupBox
      Left = 1
      Top = 217
      Width = 762
      Height = 695
      Align = alClient
      Caption = '* Wajib Di Isi....!'
      TabOrder = 1
      object lblSPESIALIS_SUBSPESIALIS: TLabel
        Left = 11
        Top = 16
        Width = 218
        Height = 18
        Alignment = taRightJustify
        Caption = 'SPESIALIS/SUBSPESIALIS *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDPJPYGMELAYANI: TLabel
        Left = 13
        Top = 32
        Width = 164
        Height = 18
        Alignment = taRightJustify
        Caption = 'DPJP YG MELAYANI *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblASALRUJUKAN: TLabel
        Left = 16
        Top = 56
        Width = 130
        Height = 18
        Caption = 'ASAL RUJUKAN *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPPKASALRUJUKAN: TLabel
        Left = 16
        Top = 80
        Width = 164
        Height = 18
        Caption = 'PPK ASAL RUJUKAN *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTGLRUJUKAN: TLabel
        Left = 16
        Top = 104
        Width = 120
        Height = 18
        Caption = 'TGL RUJUKAN *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNORUJUKAN: TLabel
        Left = 144
        Top = 104
        Width = 115
        Height = 18
        Caption = 'NO RUJUKAN *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNOSURATKONTROL: TLabel
        Left = 16
        Top = 128
        Width = 222
        Height = 18
        Caption = 'NO SURAT KONTROL/SKPD *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDPJSPPEMBERISURATKONTROL: TLabel
        Left = 16
        Top = 152
        Width = 260
        Height = 18
        Caption = 'DPJP PEMBERI SURAT KONTROL *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTGLSEP: TLabel
        Left = 16
        Top = 176
        Width = 76
        Height = 18
        Caption = 'TGL SEP *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNORM: TLabel
        Left = 16
        Top = 200
        Width = 66
        Height = 18
        Caption = 'NO RM *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDIAGNOSA: TLabel
        Left = 16
        Top = 224
        Width = 97
        Height = 18
        Caption = 'DIAGNOSA *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNOTELEPONE: TLabel
        Left = 16
        Top = 248
        Width = 121
        Height = 18
        Caption = 'NO TELEPONE *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCATATAN: TLabel
        Left = 16
        Top = 272
        Width = 84
        Height = 18
        Caption = 'CATATAN *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSTATUSKECELAKAAN: TLabel
        Left = 16
        Top = 312
        Width = 176
        Height = 18
        Caption = 'STATUS KECELAKAAN *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object chkEXSECUTIVE: TCheckBox
        Left = 280
        Top = 16
        Width = 113
        Height = 17
        Caption = 'EXSECUTIVE'
        TabOrder = 0
      end
      object edtSUBSEPESIALSI: TEdit
        Left = 384
        Top = 8
        Width = 193
        Height = 21
        TabOrder = 1
        Text = 'edtSUBSEPESIALSI'
        OnKeyPress = edtSUBSEPESIALSIKeyPress
      end
      object edtKodeSubSpesialis: TEdit
        Left = 584
        Top = 8
        Width = 73
        Height = 21
        TabOrder = 2
        Text = 'edtKodeSubSpesialis'
      end
      object edtDPJPMELAYANI: TEdit
        Left = 280
        Top = 32
        Width = 297
        Height = 21
        TabOrder = 3
        Text = 'edtDPJPMELAYANI'
        OnClick = edtDPJPMELAYANIClick
        OnKeyPress = edtDPJPMELAYANIKeyPress
      end
      object edtASALRUJUKAN: TEdit
        Left = 280
        Top = 56
        Width = 377
        Height = 21
        Enabled = False
        TabOrder = 4
        Text = 'edtASALRUJUKAN'
      end
      object edtPPKASALRUJUKAN: TEdit
        Left = 280
        Top = 80
        Width = 289
        Height = 21
        Enabled = False
        TabOrder = 5
        Text = 'edtPPKASALRUJUKAN'
      end
      object edtKodePpk: TEdit
        Left = 568
        Top = 80
        Width = 89
        Height = 21
        Enabled = False
        TabOrder = 6
        Text = 'edtKodePpk'
      end
      object dtpTGLRUJUKAN: TDateTimePicker
        Left = 280
        Top = 104
        Width = 186
        Height = 24
        Date = 44111.445433182870000000
        Time = 44111.445433182870000000
        DateFormat = dfLong
        Enabled = False
        TabOrder = 7
      end
      object edtNORUJUKAN: TEdit
        Left = 472
        Top = 104
        Width = 185
        Height = 21
        Enabled = False
        TabOrder = 8
        Text = 'edtNORUJUKAN'
      end
      object edtNOSURATKONTROL: TEdit
        Left = 280
        Top = 128
        Width = 185
        Height = 21
        TabOrder = 9
        Text = 'edtNOSURATKONTROL'
        OnKeyPress = edtNOSURATKONTROLKeyPress
      end
      object edtDPJPPEMBERIKONTROL: TEdit
        Left = 280
        Top = 152
        Width = 297
        Height = 21
        TabOrder = 10
        Text = 'edtDPJPPEMBERIKONTROL'
        OnClick = edtDPJPPEMBERIKONTROLClick
        OnKeyPress = edtDPJPPEMBERIKONTROLKeyPress
      end
      object lstdpjpmelayani: TListBox
        Left = 280
        Top = 56
        Width = 377
        Height = 97
        ItemHeight = 13
        TabOrder = 11
        Visible = False
        OnClick = lstdpjpmelayaniClick
        OnKeyPress = lstdpjpmelayaniKeyPress
      end
      object mmoCATATAN: TMemo
        Left = 280
        Top = 272
        Width = 377
        Height = 33
        Lines.Strings = (
          'mmoCATATAN')
        TabOrder = 12
      end
      object edtNoTelponeSep: TEdit
        Left = 280
        Top = 248
        Width = 185
        Height = 21
        TabOrder = 13
        Text = 'edtNOTELEPONE'
      end
      object edtDIANGNOSA: TEdit
        Left = 280
        Top = 224
        Width = 297
        Height = 21
        Enabled = False
        TabOrder = 14
        Text = 'edtDIANGNOSA'
      end
      object edtKodeDiagnosa: TEdit
        Left = 584
        Top = 224
        Width = 73
        Height = 21
        Enabled = False
        TabOrder = 15
        Text = 'edtKodeDiagnosa'
      end
      object edtNORM: TEdit
        Left = 280
        Top = 200
        Width = 185
        Height = 21
        TabOrder = 16
        Text = 'edtNORM'
      end
      object dtpTGLSEP: TDateTimePicker
        Left = 280
        Top = 176
        Width = 186
        Height = 24
        Date = 44111.448102500000000000
        Time = 44111.448102500000000000
        TabOrder = 17
      end
      object cbbSTATUSKECELAKAAN: TComboBox
        Left = 200
        Top = 312
        Width = 457
        Height = 21
        ItemHeight = 13
        TabOrder = 18
        Text = 'cbbSTATUSKECELAKAAN'
        OnSelect = cbbSTATUSKECELAKAANSelect
        Items.Strings = (
          'BUKAN KECELAKAAN'
          'KECELAKAAN LALU LINTAS DAN BUKAN KECELAKAAN KERJA'
          'KECELAKAAN LALU LINTAS DAN KECELAKAAN KERJA'
          'KECELAKAAN KERJA')
      end
      object btnBARU: TButton
        Left = 480
        Top = 496
        Width = 57
        Height = 25
        Caption = '&BARU'
        TabOrder = 19
        OnClick = btnBARUClick
      end
      object btnSimpanSep: TButton
        Left = 536
        Top = 496
        Width = 65
        Height = 25
        Caption = 'SIMPAN'
        TabOrder = 20
        OnClick = btnSimpanSepClick
      end
      object grpStatusKecelakaan: TGroupBox
        Left = 16
        Top = 345
        Width = 457
        Height = 200
        Caption = 'STATUS KECELAKAAN'
        TabOrder = 21
        object lblTGLKEJADIAN: TLabel
          Left = 8
          Top = 24
          Width = 76
          Height = 13
          Caption = 'TGL KEJADIAN'
        end
        object lblLOKASIKEJADIAN: TLabel
          Left = 8
          Top = 56
          Width = 93
          Height = 13
          Caption = 'LOKASI KEJADIAN'
        end
        object lblKETERANGANKEJADIAN: TLabel
          Left = 8
          Top = 136
          Width = 129
          Height = 13
          Caption = 'KETERANGAN KEJADIAN'
        end
        object mmoKETERANGAN: TMemo
          Left = 160
          Top = 120
          Width = 217
          Height = 41
          Lines.Strings = (
            'mmoKETERANGAN')
          TabOrder = 0
        end
        object edtProvinsiSep: TEdit
          Left = 160
          Top = 48
          Width = 217
          Height = 21
          TabOrder = 1
          Text = 'edtPROVINSI'
          OnClick = edtProvinsiSepClick
          OnKeyPress = edtProvinsiSepKeyPress
        end
        object edtKODEPROVINSI: TEdit
          Left = 384
          Top = 48
          Width = 65
          Height = 21
          TabOrder = 2
          Text = 'edtKODEPROVINSI'
        end
        object edtKOTAKAB: TEdit
          Left = 160
          Top = 72
          Width = 217
          Height = 21
          TabOrder = 3
          Text = 'edtKOTAKAB'
          OnClick = edtKOTAKABClick
          OnKeyPress = edtKOTAKABKeyPress
        end
        object edtKODEKABKOTA: TEdit
          Left = 384
          Top = 72
          Width = 65
          Height = 21
          TabOrder = 4
          Text = 'edtKODEKABKOTA'
        end
        object edtKecamatanSep: TEdit
          Left = 160
          Top = 96
          Width = 217
          Height = 21
          TabOrder = 5
          Text = 'edtKECAMATAN'
          OnClick = edtKecamatanSepClick
          OnKeyPress = edtKecamatanSepKeyPress
        end
        object edtKodeKecamatan: TEdit
          Left = 376
          Top = 96
          Width = 73
          Height = 21
          TabOrder = 6
          Text = 'edtKodeKecamatan'
        end
        object cxdtdtTGLKEJADIAN: TcxDateEdit
          Left = 160
          Top = 16
          TabOrder = 7
          Width = 217
        end
      end
      object lstPROVINSI: TListBox
        Left = 184
        Top = 416
        Width = 265
        Height = 121
        ItemHeight = 13
        TabOrder = 22
        Visible = False
        OnDblClick = lstPROVINSIDblClick
        OnKeyPress = lstPROVINSIKeyPress
      end
      object lstKABKOTA: TListBox
        Left = 184
        Top = 441
        Width = 265
        Height = 129
        ItemHeight = 13
        TabOrder = 23
        Visible = False
        OnDblClick = lstKABKOTADblClick
        OnKeyPress = lstKABKOTAKeyPress
      end
      object lstkecamatan: TListBox
        Left = 184
        Top = 465
        Width = 265
        Height = 105
        ItemHeight = 13
        TabOrder = 24
        Visible = False
        OnDblClick = lstkecamatanDblClick
        OnKeyPress = lstkecamatanKeyPress
      end
      object edtKodeDpjp: TEdit
        Left = 584
        Top = 32
        Width = 73
        Height = 21
        TabOrder = 25
        Text = 'edtKodeDpjp'
      end
      object lstKodeDpjp: TListBox
        Left = 848
        Top = 32
        Width = 49
        Height = 153
        ItemHeight = 13
        TabOrder = 26
      end
      object edtKodeDpjpPemberi: TEdit
        Left = 584
        Top = 152
        Width = 73
        Height = 21
        TabOrder = 27
        Text = 'edtKodeDpjpPemberi'
      end
      object lstKodeDpjpPemberi: TListBox
        Left = 848
        Top = 200
        Width = 41
        Height = 177
        ItemHeight = 13
        TabOrder = 28
      end
      object lstDpjpKontrol: TListBox
        Left = 272
        Top = 296
        Width = 305
        Height = 161
        ItemHeight = 13
        TabOrder = 29
        Visible = False
        OnClick = lstDpjpKontrolClick
        OnKeyPress = lstDpjpKontrolKeyPress
      end
      object lstKodeProvinsi: TListBox
        Left = 848
        Top = 384
        Width = 33
        Height = 209
        ItemHeight = 13
        TabOrder = 30
      end
      object lstKodeKab: TListBox
        Left = 888
        Top = 384
        Width = 25
        Height = 209
        ItemHeight = 13
        TabOrder = 31
      end
      object lstKodeKecamatan: TListBox
        Left = 816
        Top = 384
        Width = 25
        Height = 209
        ItemHeight = 13
        TabOrder = 32
      end
      object lstSubSepesialis: TListBox
        Left = 384
        Top = 32
        Width = 273
        Height = 105
        ItemHeight = 13
        TabOrder = 33
        Visible = False
        OnClick = lstSubSepesialisClick
        OnKeyPress = lstSubSepesialisKeyPress
      end
      object lstKodeSubSpesialis: TListBox
        Left = 784
        Top = 32
        Width = 33
        Height = 153
        ItemHeight = 13
        TabOrder = 34
      end
      object btnUbah: TButton
        Left = 600
        Top = 496
        Width = 57
        Height = 25
        Caption = 'UBAH'
        TabOrder = 35
      end
      object chkPESERTAMANUAL: TCheckBox
        Left = 472
        Top = 200
        Width = 97
        Height = 17
        Caption = 'PESERTA COB'
        TabOrder = 36
      end
    end
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
    Left = 776
    Top = 369
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
    Left = 781
    Top = 426
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
    Left = 785
    Top = 482
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
    Left = 774
    Top = 555
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
    Left = 774
    Top = 635
  end
  object idhtpSubSepealis: TIdHTTP
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
    Left = 729
    Top = 241
  end
  object idhtpCariSep: TIdHTTP
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
    Left = 625
    Top = 98
  end
end
