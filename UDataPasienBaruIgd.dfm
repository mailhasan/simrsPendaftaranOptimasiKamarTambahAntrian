object FDataPasienBaruIgd: TFDataPasienBaruIgd
  Left = 283
  Top = 146
  Width = 1305
  Height = 716
  Caption = 'DATA PASIEN BARU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTegah: TPanel
    Left = 0
    Top = 49
    Width = 1289
    Height = 589
    Align = alClient
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object grpDataPasien: TGroupBox
      Left = 1
      Top = 1
      Width = 672
      Height = 587
      Align = alLeft
      Caption = 'DATA IDENTITAS PASIEN'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object lblNoIdentitas: TLabel
        Left = 16
        Top = 68
        Width = 158
        Height = 19
        Caption = 'No. Identitas / KTP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNama: TLabel
        Left = 16
        Top = 98
        Width = 121
        Height = 19
        Caption = 'Nama Lengkap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTempatTglLahir: TLabel
        Left = 16
        Top = 128
        Width = 194
        Height = 19
        Caption = 'Tempat / Tanggal Lahir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblUmur: TLabel
        Left = 18
        Top = 160
        Width = 44
        Height = 19
        Caption = 'Umur'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblJenisKelamin: TLabel
        Left = 16
        Top = 195
        Width = 112
        Height = 19
        Caption = 'Jenis Kelamin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPendidikan: TLabel
        Left = 16
        Top = 224
        Width = 91
        Height = 19
        Caption = 'Pendidikan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAlamat: TLabel
        Left = 16
        Top = 288
        Width = 59
        Height = 19
        Caption = 'Alamat'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPekerjaan: TLabel
        Left = 16
        Top = 256
        Width = 84
        Height = 19
        Caption = 'Pekerjaan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKelurahanDesa: TLabel
        Left = 16
        Top = 400
        Width = 142
        Height = 19
        Caption = 'Kelurahan / Desa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKecamatan: TLabel
        Left = 16
        Top = 432
        Width = 91
        Height = 19
        Caption = 'Kecamatan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKabupaten: TLabel
        Left = 16
        Top = 384
        Width = 5
        Height = 19
      end
      object lbl1: TLabel
        Left = 16
        Top = 464
        Width = 145
        Height = 19
        Caption = 'Kabupaten / Kota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblProvinsi: TLabel
        Left = 16
        Top = 504
        Width = 65
        Height = 19
        Caption = 'Provinsi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKodePos: TLabel
        Left = 16
        Top = 536
        Width = 75
        Height = 19
        Caption = 'Kode Pos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBahasa: TLabel
        Left = 392
        Top = 231
        Width = 59
        Height = 19
        Caption = 'Bahasa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNoRekamedis: TLabel
        Left = 16
        Top = 40
        Width = 58
        Height = 19
        Caption = 'No. RM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lblAgama: TLabel
        Left = 392
        Top = 199
        Width = 57
        Height = 19
        Caption = 'Agama'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 392
        Top = 263
        Width = 98
        Height = 19
        Caption = 'No. Telepon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtNmLengkap: TEdit
        Left = 224
        Top = 96
        Width = 425
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = edtNmLengkapKeyPress
      end
      object edtTahun: TEdit
        Left = 224
        Top = 160
        Width = 425
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object edtKodePos: TEdit
        Left = 224
        Top = 528
        Width = 153
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 5
        OnKeyPress = edtKodePosKeyPress
      end
      object dtpTglLahir: TDateTimePicker
        Left = 496
        Top = 128
        Width = 154
        Height = 27
        Date = 43514.579428576390000000
        Time = 43514.579428576390000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = dtpTglLahirChange
        OnKeyPress = dtpTglLahirKeyPress
      end
      object edtNoRekamedis: TEdit
        Left = 224
        Top = 32
        Width = 425
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 8
        Visible = False
      end
      object cbbPendidikan: TcxLookupComboBox
        Left = 224
        Top = 224
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'kdPendidikan'
        Properties.ListColumns = <
          item
            Caption = 'PENDIDIKAN'
            FieldName = 'pendidikan'
          end>
        Properties.ListSource = DataSimrs.dsvw_Pendidikan
        TabOrder = 3
        OnKeyPress = cbbPendidikanKeyPress
        Width = 153
      end
      object cbbPekerjaan: TcxLookupComboBox
        Left = 224
        Top = 256
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'kdPekerjaan'
        Properties.ListColumns = <
          item
            Caption = 'PEKERJAAN'
            FieldName = 'pekerjaan'
          end>
        Properties.ListSource = DataSimrs.dsvw_pekerjaan
        TabOrder = 4
        OnKeyPress = cbbPekerjaanKeyPress
        Width = 153
      end
      object cbbBahasa: TcxLookupComboBox
        Left = 496
        Top = 224
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'kdBahasa'
        Properties.ListColumns = <
          item
            Caption = 'BAHASA'
            FieldName = 'bahasa'
          end>
        Properties.ListSource = DataSimrs.dsvw_bahasa
        TabOrder = 6
        OnKeyPress = cbbBahasaKeyPress
        Width = 153
      end
      object cbbAgama: TcxLookupComboBox
        Left = 496
        Top = 192
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'kdAgama'
        Properties.ListColumns = <
          item
            FieldName = 'agama'
          end>
        Properties.ListSource = DataSimrs.dsvw_agama
        TabOrder = 7
        OnKeyPress = cbbAgamaKeyPress
        Width = 153
      end
      object cbbJenisKelamin: TcxComboBox
        Left = 224
        Top = 192
        Properties.CharCase = ecUpperCase
        Properties.Items.Strings = (
          'L'
          'P')
        Properties.MaxLength = 1
        TabOrder = 9
        OnKeyPress = cbbJenisKelaminKeyPress
        Width = 153
      end
      object cxcrncydtNoTelp: TcxCurrencyEdit
        Left = 496
        Top = 256
        Properties.AssignedValues.DisplayFormat = True
        Properties.MaxLength = 14
        TabOrder = 10
        OnKeyPress = cxcrncydtNoTelpKeyPress
        Width = 153
      end
      object cxmAlamat: TcxMemo
        Left = 224
        Top = 288
        Properties.CharCase = ecUpperCase
        TabOrder = 11
        OnKeyPress = cxmAlamatKeyPress
        Height = 65
        Width = 425
      end
      object edtNoIdentitas: TEdit
        Left = 224
        Top = 64
        Width = 425
        Height = 27
        TabOrder = 12
        OnKeyPress = AngkaSaja
      end
      object cxtxtdtKecamatanNew: TcxTextEdit
        Left = 224
        Top = 432
        Enabled = False
        StyleDisabled.Color = clBtnHighlight
        TabOrder = 13
        Width = 425
      end
      object cxtxtdtKabKotaNew: TcxTextEdit
        Left = 224
        Top = 464
        Enabled = False
        StyleDisabled.Color = clHighlightText
        TabOrder = 14
        Text = 'cxtxtdtKabKotaNew'
        Width = 425
      end
      object cxtxtdtProvinsiNew: TcxTextEdit
        Left = 224
        Top = 496
        Enabled = False
        Style.BorderColor = clWindowFrame
        StyleDisabled.BorderColor = clBtnShadow
        StyleDisabled.Color = clHighlightText
        TabOrder = 15
        Text = 'cxtxtdtProvinsiNew'
        Width = 425
      end
      object edtKelurahanDesa: TEdit
        Left = 224
        Top = 400
        Width = 425
        Height = 27
        Enabled = False
        TabOrder = 16
      end
      object edtTempatLahir: TEdit
        Left = 224
        Top = 128
        Width = 265
        Height = 27
        TabOrder = 17
        OnKeyPress = edtTempatLahirKeyPress
        OnKeyUp = edtTempatLahirKeyUp
      end
      object strngrdTempatLahir: TStringGrid
        Left = 224
        Top = 152
        Width = 425
        Height = 129
        TabOrder = 18
        Visible = False
        OnDblClick = strngrdTempatLahirDblClick
        OnKeyPress = strngrdTempatLahirKeyPress
        OnSelectCell = strngrdTempatLahirSelectCell
      end
      object cxlblPencarianKelurahan: TcxLabel
        Left = 16
        Top = 360
        Caption = 'Pencarian Kelurahan'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtPencarianKelurahan: TcxTextEdit
        Left = 224
        Top = 360
        ParentFont = False
        Properties.OnChange = edtPencarianKelurahanPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 20
        OnKeyPress = edtPencarianKelurahanKeyPress
        OnKeyUp = edtPencarianKelurahanKeyUp
        Width = 425
      end
    end
    object grpDetailDataPasien: TGroupBox
      Left = 673
      Top = 1
      Width = 615
      Height = 587
      Align = alClient
      Caption = 'DETAIL DATA PASIEN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object grpPenjamin: TGroupBox
        Left = 8
        Top = 280
        Width = 625
        Height = 225
        Caption = 'PENJAMIN'
        TabOrder = 0
        object lblPenjamin: TLabel
          Left = 8
          Top = 56
          Width = 77
          Height = 19
          Caption = 'Penjamin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNoKartu: TLabel
          Left = 8
          Top = 88
          Width = 77
          Height = 19
          Caption = 'No. Kartu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNoSEP: TLabel
          Left = 8
          Top = 120
          Width = 63
          Height = 19
          Caption = 'No. SEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblAtasNama: TLabel
          Left = 8
          Top = 160
          Width = 89
          Height = 19
          Caption = 'Atas Nama'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCaraBayar: TLabel
          Left = 8
          Top = 24
          Width = 90
          Height = 19
          Caption = 'Cara Bayar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtNoKartu: TEdit
          Left = 184
          Top = 88
          Width = 417
          Height = 27
          TabOrder = 0
          OnKeyPress = edtNoKartuKeyPress
        end
        object edtNoSep: TEdit
          Left = 184
          Top = 128
          Width = 417
          Height = 27
          TabOrder = 1
          OnKeyPress = edtNoSepKeyPress
        end
        object edtAtasNama: TEdit
          Left = 184
          Top = 152
          Width = 417
          Height = 27
          TabOrder = 2
          OnKeyPress = edtAtasNamaKeyPress
        end
        object cbbPenjamin: TcxLookupComboBox
          Left = 184
          Top = 56
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'kdPenjamin'
          Properties.ListColumns = <
            item
              Caption = 'PENJAMIN'
              FieldName = 'penjamin'
            end>
          Properties.ListSource = DataSimrs.dsPenjamin
          Properties.MaxLength = 50
          TabOrder = 3
          OnKeyPress = cbbPenjaminKeyPress
          Width = 417
        end
        object cbbCaraBayar: TcxLookupComboBox
          Left = 184
          Top = 24
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'kdCaraBayar'
          Properties.ListColumns = <
            item
              Caption = 'CARA BAYAR'
              FieldName = 'carabayar'
            end>
          Properties.ListSource = DataSimrs.dsCaraBayar
          TabOrder = 4
          OnKeyPress = cbbCaraBayarKeyPress
          Width = 417
        end
      end
      object grp1: TGroupBox
        Left = 8
        Top = 16
        Width = 625
        Height = 249
        TabOrder = 1
        object lblNoRekamedisDetail: TLabel
          Left = 8
          Top = 24
          Width = 58
          Height = 19
          Caption = 'No. RM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object lblNamaPenanggung: TLabel
          Left = 8
          Top = 56
          Width = 158
          Height = 19
          Caption = 'Penanggung Jawab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblHubungan: TLabel
          Left = 8
          Top = 88
          Width = 82
          Height = 19
          Caption = 'Hubungan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblAlamatdetail: TLabel
          Left = 8
          Top = 120
          Width = 59
          Height = 19
          Caption = 'Alamat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtNoRekamedisDetail: TEdit
          Left = 184
          Top = 16
          Width = 417
          Height = 27
          CharCase = ecUpperCase
          TabOrder = 0
          Visible = False
        end
        object edtNamaPenanggungJawab: TEdit
          Left = 184
          Top = 48
          Width = 417
          Height = 27
          CharCase = ecUpperCase
          TabOrder = 1
          OnKeyPress = edtNamaPenanggungJawabKeyPress
        end
        object cxmDetailAlamatPasien: TcxMemo
          Left = 184
          Top = 112
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          OnKeyPress = cxmDetailAlamatPasienKeyPress
          Height = 57
          Width = 417
        end
        object cxlblNoTelepone: TcxLabel
          Left = 8
          Top = 176
          Caption = 'No. Telepon'
        end
        object cxcrncydtNoTeleponeDetail: TcxCurrencyEdit
          Left = 184
          Top = 176
          Properties.AssignedValues.DisplayFormat = True
          Properties.MaxLength = 14
          TabOrder = 4
          OnKeyPress = cxcrncydtNoTeleponeDetailKeyPress
          Width = 417
        end
        object cbbHubunganKeluarga: TcxComboBox
          Left = 184
          Top = 80
          Properties.Items.Strings = (
            'ANAK'
            'ISTRI'
            'SUAMI'
            'ORANG TUA'
            'WALI')
          TabOrder = 5
          OnKeyPress = cbbHubunganKeluargaKeyPress
          Width = 417
        end
      end
    end
    object strngrdAlamat: TStringGrid
      Left = 224
      Top = 384
      Width = 977
      Height = 169
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnDblClick = strngrdAlamatDblClick
      OnKeyPress = strngrdAlamatKeyPress
      OnSelectCell = strngrdAlamatSelectCell
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 638
    Width = 1289
    Height = 39
    Align = alBottom
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object btnBaru: TButton
      Left = 584
      Top = 8
      Width = 83
      Height = 25
      Caption = 'BARU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnBaruClick
    end
    object btnSimpan: TButton
      Left = 688
      Top = 7
      Width = 297
      Height = 25
      Caption = 'SIMPAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnSimpanClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 49
    Align = alTop
    Caption = 'DATA PASIEN BARU'
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object pnlKeluar: TPanel
      Left = 1151
      Top = 1
      Width = 137
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = pnlKeluarClick
    end
  end
end
