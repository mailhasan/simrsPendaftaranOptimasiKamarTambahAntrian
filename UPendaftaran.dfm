object FPendaftaran: TFPendaftaran
  Left = 191
  Top = 125
  Width = 1472
  Height = 842
  Caption = 'PENDAFTARAN RAWAT JALAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1456
    Height = 49
    Align = alTop
    Caption = 'PENDAFTARAN RAWAT JALAN'
    Color = clMenuHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 1318
      Top = 1
      Width = 137
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = pnlKeluarClick
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 723
    Width = 1456
    Height = 41
    Align = alBottom
    Color = clMenuHighlight
    TabOrder = 1
    object btnSimpan: TButton
      Left = 664
      Top = 7
      Width = 97
      Height = 30
      Caption = 'SIMPAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnSimpanClick
    end
    object btnTambah: TButton
      Left = 768
      Top = 7
      Width = 97
      Height = 30
      Caption = 'TAMBAH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnTambahClick
    end
    object btnKartuBerobat: TButton
      Left = 871
      Top = 7
      Width = 98
      Height = 29
      Caption = 'KARTU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnKartuBerobatClick
    end
    object btnLabel: TButton
      Left = 976
      Top = 7
      Width = 97
      Height = 29
      Caption = 'GELANG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnLabelClick
    end
    object btnLabel2x1: TButton
      Left = 1079
      Top = 7
      Width = 106
      Height = 29
      Caption = 'LABEL 2 X1 '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnLabel2x1Click
    end
    object btnKarcis: TButton
      Left = 1288
      Top = 7
      Width = 97
      Height = 28
      Caption = 'KARCIS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnKarcisClick
    end
    object btnLabelPdc: TButton
      Left = 1192
      Top = 8
      Width = 89
      Height = 29
      Caption = 'LABEL PDC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnLabelPdcClick
    end
  end
  object pnlKanan: TPanel
    Left = 1246
    Top = 49
    Width = 210
    Height = 674
    Align = alRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object dxnvbrMenu: TdxNavBar
      Left = 1
      Top = 1
      Width = 208
      Height = 672
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ActiveGroupIndex = 0
      TabOrder = 0
      View = 19
      OptionsStyle.DefaultStyles.Background.BackColor = clSkyBlue
      OptionsStyle.DefaultStyles.Background.BackColor2 = clWhite
      OptionsStyle.DefaultStyles.Background.Font.Charset = DEFAULT_CHARSET
      OptionsStyle.DefaultStyles.Background.Font.Color = clWindowText
      OptionsStyle.DefaultStyles.Background.Font.Height = -11
      OptionsStyle.DefaultStyles.Background.Font.Name = 'Tahoma'
      OptionsStyle.DefaultStyles.Background.Font.Style = []
      OptionsStyle.DefaultStyles.Background.HAlignment = haLeft
      OptionsStyle.DefaultStyles.Button.BackColor = clBtnFace
      OptionsStyle.DefaultStyles.Button.BackColor2 = clBtnFace
      OptionsStyle.DefaultStyles.Button.Font.Charset = DEFAULT_CHARSET
      OptionsStyle.DefaultStyles.Button.Font.Color = clWindowText
      OptionsStyle.DefaultStyles.Button.Font.Height = -11
      OptionsStyle.DefaultStyles.Button.Font.Name = 'Tahoma'
      OptionsStyle.DefaultStyles.Button.Font.Style = []
      OptionsStyle.DefaultStyles.Button.HAlignment = haLeft
      OptionsStyle.DefaultStyles.GroupBackground.BackColor = clSkyBlue
      OptionsStyle.DefaultStyles.GroupBackground.BackColor2 = clWhite
      OptionsStyle.DefaultStyles.GroupBackground.Font.Charset = DEFAULT_CHARSET
      OptionsStyle.DefaultStyles.GroupBackground.Font.Color = clWindowText
      OptionsStyle.DefaultStyles.GroupBackground.Font.Height = -11
      OptionsStyle.DefaultStyles.GroupBackground.Font.Name = 'MS Sans Serif'
      OptionsStyle.DefaultStyles.GroupBackground.Font.Style = []
      OptionsStyle.DefaultStyles.GroupBackground.HAlignment = haLeft
      OptionsStyle.DefaultStyles.Item.BackColor = clWhite
      OptionsStyle.DefaultStyles.Item.BackColor2 = clWhite
      OptionsStyle.DefaultStyles.Item.Font.Charset = DEFAULT_CHARSET
      OptionsStyle.DefaultStyles.Item.Font.Color = clWindowText
      OptionsStyle.DefaultStyles.Item.Font.Height = -11
      OptionsStyle.DefaultStyles.Item.Font.Name = 'Tahoma'
      OptionsStyle.DefaultStyles.Item.Font.Style = []
      OptionsStyle.DefaultStyles.DropTargetGroup.AlphaBlending = 60
      OptionsStyle.DefaultStyles.DropTargetGroup.AlphaBlending2 = 60
      OptionsStyle.DefaultStyles.DropTargetGroup.BackColor = clHighlight
      OptionsStyle.DefaultStyles.DropTargetGroup.BackColor2 = clHighlight
      OptionsStyle.DefaultStyles.DropTargetGroup.Font.Charset = DEFAULT_CHARSET
      OptionsStyle.DefaultStyles.DropTargetGroup.Font.Color = clWindowText
      OptionsStyle.DefaultStyles.DropTargetGroup.Font.Height = -11
      OptionsStyle.DefaultStyles.DropTargetGroup.Font.Name = 'Tahoma'
      OptionsStyle.DefaultStyles.DropTargetGroup.Font.Style = [fsBold]
      OptionsStyle.DefaultStyles.DropTargetGroup.HAlignment = haLeft
      object dxnvbrgrpMenuGroupMenu: TdxNavBarGroup
        Caption = 'Menu'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmMenuItemRiwayatKunjungan
          end
          item
            Item = dxnvbrtmMenuItemBiodataPasien
          end
          item
            Item = dxnvbrtmMenuItemPenanggungJawab
          end
          item
            Item = dxnvbrtmMenuItemBataslPasien
          end
          item
            Item = dxnvbrtmMenuItemPenjamin
          end
          item
            Item = dxnvbrtmMenuItemJadwalDokter
          end
          item
            Item = dxnvbrtmMenuItemDaftarHariIni
          end
          item
            Item = dxnvbrtmMenuItemAsesment
          end
          item
            Item = dxnvbrtmMenuItemJadwalKontrol
          end
          item
            Item = dxnvbrtmBpjs
          end>
      end
      object dxnvbrgrpMenuGroupLaporan: TdxNavBarGroup
        Caption = 'Laporan'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmMenuItemLaporan
          end>
      end
      object dxnvbrgrpMenuGroupKeluar: TdxNavBarGroup
        Caption = 'Keluar'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmMenuItemKeluar
          end>
      end
      object dxnvbrtmMenuItemRiwayatKunjungan: TdxNavBarItem
        Caption = 'RIWAYAT KUNJUGAN'
        OnClick = dxnvbrtmMenuItemRiwayatKunjunganClick
      end
      object dxnvbrtmMenuItemBiodataPasien: TdxNavBarItem
        Caption = 'BIODATA PASIEN'
        OnClick = dxnvbrtmMenuItemBiodataPasienClick
      end
      object dxnvbrtmMenuItemBataslPasien: TdxNavBarItem
        Caption = 'BATAL PASIEN'
        OnClick = dxnvbrtmMenuItemBataslPasienClick
      end
      object dxnvbrtmMenuItemJadwalDokter: TdxNavBarItem
        Caption = 'JADWAL DOKTER'
      end
      object dxnvbrtmMenuItemPenanggungJawab: TdxNavBarItem
        Caption = 'PENANGGUNG JAWAB'
        Visible = False
      end
      object dxnvbrtmMenuItemPenjamin: TdxNavBarItem
        Caption = 'EDIT PENJAMIN'
        OnClick = dxnvbrtmMenuItemPenjaminClick
      end
      object dxnvbrtmMenuItemDaftarHariIni: TdxNavBarItem
        Caption = 'DAFTAR HARI INI'
        OnClick = dxnvbrtmMenuItemDaftarHariIniClick
      end
      object dxnvbrtmMenuItemAsesment: TdxNavBarItem
        Caption = 'ASESMENT'
        Visible = False
      end
      object dxnvbrtmMenuItemLaporan: TdxNavBarItem
        Caption = 'LAPORAN'
        OnClick = dxnvbrtmMenuItemLaporanClick
      end
      object dxnvbrtmMenuItemKeluar: TdxNavBarItem
        Caption = 'KELUAR'
        OnClick = dxnvbrtmMenuItemKeluarClick
      end
      object dxnvbrtmMenuItemJadwalKontrol: TdxNavBarItem
        Caption = 'JADWAL KONTROL PASIEN'
        OnClick = dxnvbrtmMenuItemJadwalKontrolClick
      end
      object dxnvbrtmBpjs: TdxNavBarItem
        Caption = 'BPJS'
        OnClick = dxnvbrtmBpjsClick
      end
    end
  end
  object pnlTegah: TPanel
    Left = 0
    Top = 49
    Width = 1246
    Height = 674
    Align = alClient
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object pnlAtas1: TPanel
      Left = 1
      Top = 1
      Width = 1244
      Height = 88
      Align = alTop
      Color = clSkyBlue
      TabOrder = 0
      object grpNoRm: TGroupBox
        Left = 1
        Top = 1
        Width = 656
        Height = 86
        Align = alLeft
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object lblTanggal: TLabel
          Left = 8
          Top = 16
          Width = 59
          Height = 18
          Caption = 'Tanggal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNoRekamedis: TLabel
          Left = 8
          Top = 48
          Width = 54
          Height = 18
          Caption = 'No. RM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dtpTanggal: TDateTimePicker
          Left = 104
          Top = 16
          Width = 186
          Height = 27
          Date = 43509.432595706020000000
          Time = 43509.432595706020000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edtNoRekamedis: TEdit
          Left = 104
          Top = 48
          Width = 185
          Height = 27
          TabOrder = 1
          OnClick = edtNoRekamedisClick
          OnKeyPress = edtNoRekamedisKeyPress
        end
        object btnPasienLama: TButton
          Left = 304
          Top = 16
          Width = 137
          Height = 25
          Caption = 'Pasien Lama'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnPasienLamaClick
        end
        object btnPasienBaru: TButton
          Left = 304
          Top = 48
          Width = 137
          Height = 25
          Caption = 'Pasien Baru'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnPasienBaruClick
        end
      end
      object grpNoRegistrasi: TGroupBox
        Left = 657
        Top = 1
        Width = 586
        Height = 86
        Align = alClient
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object lblNoRegistrasi: TLabel
          Left = 16
          Top = 50
          Width = 107
          Height = 18
          Caption = 'No. Registrasi'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblKunjungan: TLabel
          Left = 16
          Top = 24
          Width = 101
          Height = 18
          Caption = 'Kunjungan Ke'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtNoRegistrasi: TEdit
          Left = 168
          Top = 48
          Width = 185
          Height = 27
          Enabled = False
          TabOrder = 0
        end
        object edtKunjungan: TEdit
          Left = 168
          Top = 16
          Width = 185
          Height = 27
          Enabled = False
          TabOrder = 1
        end
      end
    end
    object grpDataPasien: TGroupBox
      Left = 1
      Top = 89
      Width = 656
      Height = 584
      Align = alLeft
      Caption = 'DATA IDENTITAS PASIEN'
      Color = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object lblNoIdentitas: TLabel
        Left = 16
        Top = 32
        Width = 139
        Height = 18
        Caption = 'No Identitas / KTP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNama: TLabel
        Left = 16
        Top = 60
        Width = 110
        Height = 18
        Caption = 'Nama Lengkap'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTempatTglLahir: TLabel
        Left = 15
        Top = 91
        Width = 138
        Height = 18
        Caption = 'Tempat / Tgl Lahir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblUmur: TLabel
        Left = 16
        Top = 121
        Width = 40
        Height = 18
        Caption = 'Umur'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblJenisKelamin: TLabel
        Left = 16
        Top = 154
        Width = 103
        Height = 18
        Caption = 'Jenis Kelamin'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPendidikan: TLabel
        Left = 16
        Top = 188
        Width = 83
        Height = 18
        Caption = 'Pendidikan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAlamat: TLabel
        Left = 17
        Top = 249
        Width = 52
        Height = 18
        Caption = 'Alamat'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPekerjaan: TLabel
        Left = 16
        Top = 217
        Width = 76
        Height = 18
        Caption = 'Pekerjaan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKelurahanDesa: TLabel
        Left = 16
        Top = 325
        Width = 130
        Height = 18
        Caption = 'Kelurahan / Desa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKecamatan: TLabel
        Left = 16
        Top = 358
        Width = 82
        Height = 18
        Caption = 'Kecamatan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
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
        Top = 387
        Width = 130
        Height = 18
        Caption = 'Kabupaten / Kota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblProvinsi: TLabel
        Left = 16
        Top = 419
        Width = 62
        Height = 18
        Caption = 'Provinsi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKodePos: TLabel
        Left = 16
        Top = 452
        Width = 68
        Height = 18
        Caption = 'Kode Pos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBahasa: TLabel
        Left = 384
        Top = 187
        Width = 54
        Height = 18
        Caption = 'Bahasa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAgama: TLabel
        Left = 384
        Top = 156
        Width = 50
        Height = 18
        Caption = 'Agama'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 384
        Top = 219
        Width = 89
        Height = 18
        Caption = 'No. Telepon'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKodeJadwalPasien: TLabel
        Left = 16
        Top = 536
        Width = 172
        Height = 19
        Caption = 'lblKodeJadwalPasien'
        Visible = False
      end
      object edtNoIdentitas: TEdit
        Left = 184
        Top = 24
        Width = 457
        Height = 27
        Enabled = False
        TabOrder = 0
      end
      object edtNmLengkap: TEdit
        Left = 184
        Top = 56
        Width = 457
        Height = 27
        Enabled = False
        TabOrder = 1
      end
      object edtTempatLahir: TEdit
        Left = 184
        Top = 88
        Width = 177
        Height = 27
        Enabled = False
        TabOrder = 2
      end
      object edtTglLahir: TEdit
        Left = 376
        Top = 88
        Width = 265
        Height = 27
        Enabled = False
        TabOrder = 3
      end
      object edtTahun: TEdit
        Left = 184
        Top = 120
        Width = 457
        Height = 27
        Enabled = False
        TabOrder = 4
      end
      object edtJenisKelamin: TEdit
        Left = 184
        Top = 152
        Width = 185
        Height = 27
        Enabled = False
        TabOrder = 5
      end
      object edtPendidikan: TEdit
        Left = 184
        Top = 184
        Width = 185
        Height = 27
        Enabled = False
        TabOrder = 6
      end
      object edtPekerjaan: TEdit
        Left = 184
        Top = 216
        Width = 185
        Height = 27
        Enabled = False
        TabOrder = 7
      end
      object mmoAlamat: TMemo
        Left = 184
        Top = 248
        Width = 457
        Height = 65
        Enabled = False
        TabOrder = 8
      end
      object edtKelurahanDesa: TEdit
        Left = 184
        Top = 320
        Width = 457
        Height = 27
        Enabled = False
        TabOrder = 9
      end
      object edtKecamatan: TEdit
        Left = 184
        Top = 352
        Width = 457
        Height = 27
        Enabled = False
        TabOrder = 10
      end
      object edtKabupaten: TEdit
        Left = 184
        Top = 384
        Width = 457
        Height = 27
        Enabled = False
        TabOrder = 11
      end
      object edtProvinsi: TEdit
        Left = 184
        Top = 416
        Width = 457
        Height = 27
        Enabled = False
        TabOrder = 12
      end
      object edtKodePos: TEdit
        Left = 184
        Top = 448
        Width = 177
        Height = 27
        Enabled = False
        TabOrder = 13
      end
      object edtBahasa: TEdit
        Left = 496
        Top = 184
        Width = 145
        Height = 27
        Enabled = False
        TabOrder = 14
      end
      object edtAgama: TEdit
        Left = 496
        Top = 152
        Width = 145
        Height = 27
        Enabled = False
        TabOrder = 15
      end
      object edtLamaBaru: TEdit
        Left = 496
        Top = 24
        Width = 145
        Height = 27
        TabOrder = 16
        Visible = False
      end
      object edtNoTelepone: TEdit
        Left = 496
        Top = 216
        Width = 145
        Height = 27
        Enabled = False
        TabOrder = 17
      end
    end
    object grpDataPendaftaran: TGroupBox
      Left = 657
      Top = 89
      Width = 588
      Height = 584
      Align = alClient
      Caption = 'DATA DAFTAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object lblAsalPasien: TLabel
        Left = 16
        Top = 32
        Width = 86
        Height = 18
        Caption = 'Asal Pasien'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCaraBayar: TLabel
        Left = 17
        Top = 90
        Width = 83
        Height = 18
        Caption = 'Cara Bayar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblUnitPelayanan: TLabel
        Left = 16
        Top = 272
        Width = 113
        Height = 18
        Caption = 'Unit Pelayanan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDokter: TLabel
        Left = 16
        Top = 304
        Width = 51
        Height = 18
        Caption = 'Dokter'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPenjamin: TLabel
        Left = 16
        Top = 117
        Width = 69
        Height = 18
        Caption = 'Penjamin'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 16
        Top = 60
        Width = 97
        Height = 18
        Caption = 'Asal Rujukan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object grpKarci: TGroupBox
        Left = 8
        Top = 336
        Width = 681
        Height = 105
        Caption = 'DATA TAMPIL SETELAH PILIH UNIT PELAYANAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lblKarciPendaftaran: TLabel
          Left = 8
          Top = 32
          Width = 143
          Height = 18
          Caption = 'Karcis Pendaftaran'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblKonsulTasiDokter: TLabel
          Left = 8
          Top = 64
          Width = 145
          Height = 19
          Caption = 'Konsultasi Dokter'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtKarcisPendaftaran: TEdit
          Left = 168
          Top = 24
          Width = 385
          Height = 26
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyPress = edtKarcisPendaftaranKeyPress
        end
        object edtKonsulDokter: TEdit
          Left = 168
          Top = 56
          Width = 385
          Height = 26
          CharCase = ecUpperCase
          TabOrder = 1
          OnKeyPress = edtKonsulDokterKeyPress
        end
      end
      object cbbAsalPasien: TcxLookupComboBox
        Left = 168
        Top = 24
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'kdAsalPasien'
        Properties.ListColumns = <
          item
            Caption = 'ASAL PASIEN'
            FieldName = 'asalPasien'
          end>
        Properties.ListSource = DataSimrs.dsVw_dsAsalPasien
        TabOrder = 1
        OnKeyPress = cbbAsalPasienKeyPress
        Width = 393
      end
      object cbbCaraBayar: TcxLookupComboBox
        Left = 168
        Top = 88
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'kdCaraBayar'
        Properties.ListColumns = <
          item
            Caption = 'CARA BAYAR'
            FieldName = 'carabayar'
          end>
        Properties.ListSource = DataSimrs.dsCaraBayar
        Properties.MaxLength = 150
        TabOrder = 3
        OnKeyPress = cbbCaraBayarKeyPress
        Width = 393
      end
      object cbbPenjamin: TcxLookupComboBox
        Left = 168
        Top = 112
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'kdPenjamin'
        Properties.ListColumns = <
          item
            Caption = 'PENJAMIN'
            FieldName = 'penjamin'
          end>
        Properties.ListSource = DataSimrs.dsPenjamin
        Properties.MaxLength = 200
        TabOrder = 4
        OnKeyPress = cbbPenjaminKeyPress
        Width = 393
      end
      object cbbDokter: TcxLookupComboBox
        Left = 168
        Top = 296
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'kdPetugasMedis'
        Properties.ListColumns = <
          item
            Caption = 'DOKTER'
            FieldName = 'namaPetugasMedis'
          end>
        Properties.ListSource = DataSimrs.dsDokter
        Properties.MaxLength = 100
        TabOrder = 8
        OnKeyPress = cbbDokterKeyPress
        Width = 393
      end
      object cbbUnitPelayanan: TcxLookupComboBox
        Left = 168
        Top = 264
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'kdUnit'
        Properties.ListColumns = <
          item
            Caption = 'UNIT'
            MinWidth = 50
            FieldName = 'unit'
          end>
        Properties.ListSource = DataSimrs.dswv_unitrajal
        Properties.MaxLength = 50
        TabOrder = 7
        OnDblClick = cbbUnitPelayananDblClick
        OnKeyPress = cbbUnitPelayananKeyPress
        Width = 393
      end
      object grpKeteranganTombol: TGroupBox
        Left = 2
        Top = 493
        Width = 584
        Height = 89
        Align = alBottom
        Caption = 'Keterangan Tombol Pintas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object lblCtrlP: TLabel
          Left = 8
          Top = 24
          Width = 151
          Height = 16
          Caption = 'CTRL+P : PASIEN LAMA'
        end
        object lblctrlB: TLabel
          Left = 8
          Top = 40
          Width = 148
          Height = 16
          Caption = 'CTRL+B : PASIEN BARU'
        end
        object lblCTRLS: TLabel
          Left = 8
          Top = 56
          Width = 113
          Height = 16
          Caption = 'CTRL+S : SIMPAN'
        end
        object lblCTRLT: TLabel
          Left = 8
          Top = 72
          Width = 117
          Height = 16
          Caption = 'CTRL+T : TAMBAH'
        end
        object lblCTRLK: TLabel
          Left = 192
          Top = 21
          Width = 167
          Height = 16
          Caption = 'CTRL+K : KARTU BEROBAT'
        end
        object lblGelang: TLabel
          Left = 192
          Top = 37
          Width = 111
          Height = 16
          Caption = 'CTRL+G : GELANG'
        end
        object lblCTRLL: TLabel
          Left = 192
          Top = 53
          Width = 126
          Height = 16
          Caption = 'CTRL+L: LABEL 2X1'
        end
        object lblCTRLR: TLabel
          Left = 192
          Top = 69
          Width = 108
          Height = 16
          Caption = 'CTRL+R: KARCIS'
        end
        object lblESC: TLabel
          Left = 400
          Top = 21
          Width = 85
          Height = 16
          Caption = 'ECS : KELUAR'
        end
      end
      object grpKartuPenjamin: TGroupBox
        Left = 8
        Top = 136
        Width = 625
        Height = 121
        Caption = 'KARTU PENJAMIN'
        TabOrder = 6
        object lblNoKartu: TLabel
          Left = 16
          Top = 32
          Width = 71
          Height = 18
          Caption = 'No. Kartu'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNoSEP: TLabel
          Left = 17
          Top = 61
          Width = 59
          Height = 18
          Caption = 'No. SEP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblAtasNama: TLabel
          Left = 16
          Top = 88
          Width = 80
          Height = 18
          Caption = 'Atas Nama'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtNoKartu: TEdit
          Left = 160
          Top = 24
          Width = 393
          Height = 27
          TabOrder = 0
          OnKeyPress = edtNoKartuKeyPress
        end
        object edtNoSep: TEdit
          Left = 160
          Top = 56
          Width = 393
          Height = 27
          TabOrder = 1
          OnKeyPress = edtNoSepKeyPress
        end
        object edtAtasNama: TEdit
          Left = 160
          Top = 88
          Width = 393
          Height = 27
          TabOrder = 2
          OnKeyPress = edtAtasNamaKeyPress
        end
      end
      object edtIsiAsalPasien: TEdit
        Left = 168
        Top = 57
        Width = 393
        Height = 27
        TabOrder = 2
        OnKeyPress = edtIsiAsalPasienKeyPress
      end
    end
  end
  object statSimrs: TStatusBar
    Left = 0
    Top = 764
    Width = 1456
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object actlstShoutcut: TActionList
    Left = 1073
    Top = 594
    object actPasienLama: TAction
      Caption = 'actPasienLama'
      SecondaryShortCuts.Strings = (
        'Ctrl+P')
      OnExecute = btnPasienLamaClick
    end
    object actPasienBaru: TAction
      Caption = 'actPasienBaru'
      SecondaryShortCuts.Strings = (
        'Ctrl+B')
      OnExecute = btnPasienBaruClick
    end
    object actSIMPAN: TAction
      Caption = 'SIMPAN'
      SecondaryShortCuts.Strings = (
        'CTRL+S')
      OnExecute = btnSimpanClick
    end
    object actTAMBAH: TAction
      Caption = 'actTAMBAH'
      SecondaryShortCuts.Strings = (
        'CTRL+T')
      OnExecute = btnTambahClick
    end
    object actKartu: TAction
      Caption = 'actKartu'
      SecondaryShortCuts.Strings = (
        'CTRL+K')
      OnExecute = btnKartuBerobatClick
    end
    object actLabel2x1: TAction
      Caption = 'actLabel2x1'
      SecondaryShortCuts.Strings = (
        'CTRL+L')
      OnExecute = btnLabel2x1Click
    end
    object actKarcis: TAction
      Caption = 'KARCIS'
      SecondaryShortCuts.Strings = (
        'CTRL+R')
      OnExecute = btnKarcisClick
    end
  end
  object frxdbdtstKarcis: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'noDaftar=noDaftar'
      'noRekamedis=noRekamedis'
      'kdAsalPasien=kdAsalPasien'
      'kdPenjamin=kdPenjamin'
      'kdTenagaMedis=kdTenagaMedis'
      'waktuPraktekDokter=waktuPraktekDokter'
      'kdStatusKeluar=kdStatusKeluar'
      'kdCaraBayar=kdCaraBayar'
      'noRegistrasiRawatJalan=noRegistrasiRawatJalan'
      'tglDaftar=tglDaftar'
      'nmPasien=nmPasien'
      'tempatLahir=tempatLahir'
      'tglLahir=tglLahir'
      'jenisKelamin=jenisKelamin'
      'agama=agama'
      'alamat=alamat'
      'pendidikan=pendidikan'
      'pekerjaan=pekerjaan'
      'kelurahan=kelurahan'
      'kecamatan=kecamatan'
      'provinsi=provinsi'
      'kdUnit=kdUnit'
      'tglMasukRawatJalan=tglMasukRawatJalan'
      'unit=unit'
      'kdInstalasi=kdInstalasi'
      'asalPasien=asalPasien'
      'carabayar=carabayar'
      'penjamin=penjamin'
      'statusKeluar=statusKeluar'
      'namapetugasMedis=namapetugasMedis'
      'karciPendaftaran=karciPendaftaran'
      'konsulDokter=konsulDokter')
    DataSource = DataSimrs.dsvw_pasienrawatjalan
    BCDToCurrency = False
    Left = 905
    Top = 586
  end
  object frxdbdtstPasien: TfrxDBDataset
    UserName = 'frxDBDatasetPasien'
    CloseDataSource = False
    FieldAliases.Strings = (
      'noRekamedis=noRekamedis'
      'nmPasien=nmPasien'
      'titel=titel'
      'tempatLahir=tempatLahir'
      'tglLahir=tglLahir'
      'jenisKelamin=jenisKelamin'
      'kdAgama=kdAgama'
      'agama=agama'
      'alamat=alamat'
      'kdPendidikan=kdPendidikan'
      'pendidikan=pendidikan'
      'kdPekerjaan=kdPekerjaan'
      'pekerjaan=pekerjaan'
      'kdKelurahan=kdKelurahan'
      'kelurahan=kelurahan'
      'kdKecamatan=kdKecamatan'
      'kecamatan=kecamatan'
      'kdKabupaten=kdKabupaten'
      'kabupaten=kabupaten'
      'kdProvinsi=kdProvinsi'
      'provinsi=provinsi'
      'kdPos=kdPos'
      'kdBahasa=kdBahasa'
      'noKtp=noKtp'
      'tglDaftar=tglDaftar'
      'caraBayar=caraBayar'
      'penjamin=penjamin'
      'noKartuPenjamin=noKartuPenjamin'
      'noSepPenjamin=noSepPenjamin'
      'atasNamaPenjamin=atasNamaPenjamin'
      'noTelepone=noTelepone')
    DataSource = DataSimrs.dsVwPasien
    BCDToCurrency = False
    Left = 825
    Top = 594
  end
  object frxrprtGelang: TfrxReport
    Version = '4.12.6'
    DataSet = frxdbdtstPasien
    DataSetName = 'frxDBDatasetPasien'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43776.447550532400000000
    ReportOptions.LastChange = 43776.575741273100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 985
    Top = 610
    Datasets = <
      item
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 291.000000000000000000
      PaperHeight = 21.000000000000000000
      PaperSize = 256
      TopMargin = 1.200000000000000000
      BottomMargin = 1.200000000000000000
      object Memo1: TfrxMemoView
        Left = 41.574830000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          'Nama Pasien')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 41.574830000000000000
        Top = 15.118120000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          'Rekam Medis')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 41.574830000000000000
        Top = 30.236240000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          'Tanggal Lahir')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 41.574830000000000000
        Top = 52.913420000000000000
        Width = 313.700990000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          'RUMAH SAKIT KARSA HUSADA BATU')
        ParentFont = False
      end
      object frxDBDatasetPasiennmPasien: TfrxMemoView
        Left = 154.960730000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          ': [frxDBDatasetPasien."nmPasien"]')
        ParentFont = False
      end
      object frxDBDatasetPasiennoRekamedis: TfrxMemoView
        Left = 154.960730000000000000
        Top = 18.897650000000000000
        Width = 291.023810000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          ': [frxDBDatasetPasien."noRekamedis"]')
        ParentFont = False
      end
      object frxDBDatasetPasientglLahir: TfrxMemoView
        Left = 154.960730000000000000
        Top = 34.015770000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          ': [frxDBDatasetPasien."tglLahir"]')
        ParentFont = False
      end
    end
  end
  object frxrprtKarcis: TfrxReport
    Version = '4.12.6'
    DataSet = frxdbdtstKarcis
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43775.409589768500000000
    ReportOptions.LastChange = 43889.441031481500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1137
    Top = 610
    Datasets = <
      item
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 100.000000000000000000
      PaperHeight = 120.000000000000000000
      PaperSize = 256
      LeftMargin = 2.500000000000000000
      RightMargin = 2.500000000000000000
      TopMargin = 2.500000000000000000
      BottomMargin = 2.500000000000000000
      object Memo1: TfrxMemoView
        Left = 98.267780000000000000
        Top = 3.779530000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'RUMAH SAKIT KARSA HUSADA BATU')
      end
      object Memo2: TfrxMemoView
        Left = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 207.874150000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'Jl. Jendral Ahmad Yani No. 10-13 BATU')
      end
      object Memo3: TfrxMemoView
        Left = 64.252010000000000000
        Top = 34.015770000000000000
        Width = 234.330860000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'Telp.(0341) 596898, 591076, 591036 ')
      end
      object Line1: TfrxLineView
        Top = 52.913420000000000000
        Width = 377.953000000000000000
        ShowHint = False
        Diagonal = True
      end
      object Memo4: TfrxMemoView
        Top = 60.472480000000000000
        Width = 64.252010000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'NO RM')
      end
      object Memo5: TfrxMemoView
        Top = 83.149660000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'NAMA')
      end
      object Memo6: TfrxMemoView
        Top = 109.606370000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'TTL')
      end
      object Memo7: TfrxMemoView
        Top = 136.063080000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'ALAMAT')
      end
      object frxDBDataset1noRekamedis: TfrxMemoView
        Left = 113.385900000000000000
        Top = 60.472480000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          ': [frxDBDataset1."noRekamedis"]')
      end
      object frxDBDataset1nmPasien: TfrxMemoView
        Left = 113.385900000000000000
        Top = 83.149660000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          ': [frxDBDataset1."nmPasien"]')
      end
      object frxDBDataset1tempatLahir: TfrxMemoView
        Left = 113.385900000000000000
        Top = 109.606370000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          ': [frxDBDataset1."tempatLahir"], [frxDBDataset1."tglLahir"]')
      end
      object frxDBDataset1alamat: TfrxMemoView
        Left = 113.385900000000000000
        Top = 136.063080000000000000
        Width = 245.669450000000000000
        Height = 56.692950000000000000
        ShowHint = False
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          ': [frxDBDataset1."alamat"]')
      end
      object frxDBDataset1asalPasien: TfrxMemoView
        Left = 113.385900000000000000
        Top = 207.874150000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          ': [frxDBDataset1."asalPasien"]')
      end
      object Memo8: TfrxMemoView
        Top = 207.874150000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'ASAL PASIEN')
      end
      object Memo9: TfrxMemoView
        Top = 230.551330000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'CARA BAYAR')
      end
      object frxDBDataset1carabayar: TfrxMemoView
        Left = 113.385900000000000000
        Top = 230.551330000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          ': [frxDBDataset1."carabayar"]')
      end
      object frxDBDataset1unit: TfrxMemoView
        Left = 113.385900000000000000
        Top = 253.228510000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          ': [frxDBDataset1."unit"]')
      end
      object Memo10: TfrxMemoView
        Top = 249.448980000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'POLI')
      end
      object frxDBDataset1namapetugasMedis: TfrxMemoView
        Left = 113.385900000000000000
        Top = 279.685220000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          ': [frxDBDataset1."namapetugasMedis"]')
      end
      object Memo11: TfrxMemoView
        Top = 279.685220000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'DOKTER')
      end
      object Memo12: TfrxMemoView
        Top = 302.362400000000000000
        Width = 113.385900000000000000
        Height = 41.574830000000000000
        ShowHint = False
        Memo.UTF8 = (
          'KARCIS PENDAFTARAN')
      end
      object frxDBDataset1karciPendaftaran: TfrxMemoView
        Left = 117.165430000000000000
        Top = 321.260050000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          ': RP.[frxDBDataset1."karciPendaftaran"]')
      end
      object Memo13: TfrxMemoView
        Top = 336.378170000000000000
        Width = 94.488250000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Memo.UTF8 = (
          'KONSUL DOKTER')
      end
      object frxDBDataset1konsulDokter: TfrxMemoView
        Left = 113.385900000000000000
        Top = 351.496290000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          ': RP.[frxDBDataset1."konsulDokter"]')
      end
      object Memo14: TfrxMemoView
        Top = 381.732530000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'TOTAL ')
      end
      object Memo15: TfrxMemoView
        Left = 113.385900000000000000
        Top = 381.732530000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          
            ': RP.[<frxDBDataset1."karciPendaftaran">+<frxDBDataset1."konsulD' +
            'okter">]')
      end
      object Line2: TfrxLineView
        Left = 3.779530000000000000
        Top = 302.362400000000000000
        Width = 336.378170000000000000
        ShowHint = False
        Diagonal = True
      end
      object frxDBDataset1tglDaftar: TfrxMemoView
        Left = 113.385900000000000000
        Top = 173.858380000000000000
        Width = 166.299320000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          ': [frxDBDataset1."tglDaftar"]')
      end
      object Memo16: TfrxMemoView
        Top = 170.078850000000000000
        Width = 98.267780000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Memo.UTF8 = (
          'TGL/JAM DAFTAR')
      end
    end
  end
  object frxrprtKartuBerobat: TfrxReport
    Version = '4.12.6'
    DataSet = frxdbdtstPasien
    DataSetName = 'frxDBDatasetPasien'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43774.441154155100000000
    ReportOptions.LastChange = 43878.573720104200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 737
    Top = 594
    Datasets = <
      item
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 89.000000000000000000
      PaperHeight = 59.000000000000000000
      PaperSize = 256
      LeftMargin = 2.500000000000000000
      RightMargin = 2.500000000000000000
      TopMargin = 2.500000000000000000
      BottomMargin = 2.500000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      OnAfterPrint = 'Page1OnAfterPrint'
      object frxDBDatasetPasiennoRekamedis: TfrxMemoView
        Left = 71.811070000000000000
        Top = 56.692950000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Memo.UTF8 = (
          ': [frxDBDatasetPasien."noRekamedis"]')
      end
      object frxDBDatasetPasiennmPasien: TfrxMemoView
        Left = 71.811070000000000000
        Top = 75.590600000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Memo.UTF8 = (
          ': [frxDBDatasetPasien."nmPasien"]')
      end
      object frxDBDatasetPasientempatLahir: TfrxMemoView
        Left = 71.811070000000000000
        Top = 94.488250000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Memo.UTF8 = (
          
            ': [frxDBDatasetPasien."tempatLahir"], [frxDBDatasetPasien."tglLa' +
            'hir"]')
      end
      object frxDBDatasetPasienalamat: TfrxMemoView
        Left = 71.811070000000000000
        Top = 113.385900000000000000
        Width = 249.448980000000000000
        Height = 86.929190000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Memo.UTF8 = (
          
            ': [frxDBDatasetPasien."alamat"], [frxDBDatasetPasien."kecamatan"' +
            '],  [frxDBDatasetPasien."kelurahan"],[frxDBDatasetPasien."kabupa' +
            'ten"], [frxDBDatasetPasien."provinsi"]')
      end
      object Memo1: TfrxMemoView
        Left = 3.779530000000000000
        Top = 56.692950000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'NO RM')
      end
      object Memo2: TfrxMemoView
        Left = 3.779530000000000000
        Top = 75.590600000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'NAMA')
      end
      object Memo3: TfrxMemoView
        Left = 3.779530000000000000
        Top = 94.488250000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'TTL')
      end
      object Memo4: TfrxMemoView
        Left = 3.779530000000000000
        Top = 117.165430000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'ALAMAT')
      end
      object Memo5: TfrxMemoView
        Left = 105.826840000000000000
        Width = 102.047310000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Memo.UTF8 = (
          'KARTU PASIEN')
      end
      object Memo6: TfrxMemoView
        Left = 49.133890000000000000
        Top = 15.118120000000000000
        Width = 222.992270000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Memo.UTF8 = (
          'RUMAH SAKIT KARSA HUSADA BATU')
      end
    end
  end
  object frxrprtLabel: TfrxReport
    Version = '4.12.6'
    DataSet = frxdbdtstPasien
    DataSetName = 'frxDBDatasetPasien'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43774.659881574100000000
    ReportOptions.LastChange = 44005.595702835650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 681
    Top = 618
    Datasets = <
      item
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 105.000000000000000000
      PaperHeight = 25.000000000000000000
      PaperSize = 256
      LeftMargin = 2.500000000000000000
      RightMargin = 2.500000000000000000
      TopMargin = 2.500000000000000000
      BottomMargin = 2.500000000000000000
      Columns = 2
      ColumnWidth = 50.000000000000000000
      ColumnPositions.Strings = (
        '0'
        '50')
      object frxDBDatasetPasiennoRekamedis: TfrxMemoView
        Width = 188.976500000000000000
        Height = 15.118120000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.500000000000000000
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."noRekamedis"] ([frxDBDatasetPasien."jenisKe' +
            'lamin"]),')
        ParentFont = False
      end
      object frxDBDatasetPasiennmPasien: TfrxMemoView
        Top = 11.338590000000000000
        Width = 188.976500000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'nmPasien'
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Width = 0.500000000000000000
        Memo.UTF8 = (
          '[frxDBDatasetPasien."nmPasien"]')
        ParentFont = False
      end
      object frxDBDatasetPasientglLahir: TfrxMemoView
        Top = 34.015770000000000000
        Width = 181.417440000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.500000000000000000
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."tempatLahir"], [frxDBDatasetPasien."tglLahi' +
            'r"]')
        ParentFont = False
      end
      object frxDBDatasetPasienalamat: TfrxMemoView
        Top = 41.574830000000000000
        Width = 185.196970000000000000
        Height = 34.015770000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.500000000000000000
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."alamat"],[<frxDBDatasetPasien."kelurahan">]' +
            ',[<frxDBDatasetPasien."kecamatan">]')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Left = 207.874150000000000000
        Width = 188.976500000000000000
        Height = 15.118120000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.500000000000000000
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."noRekamedis"] ([frxDBDatasetPasien."jenisKe' +
            'lamin"]),')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 207.874150000000000000
        Top = 11.338590000000000000
        Width = 188.976500000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'nmPasien'
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Width = 0.500000000000000000
        Memo.UTF8 = (
          '[frxDBDatasetPasien."nmPasien"]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 207.874150000000000000
        Top = 34.015770000000000000
        Width = 181.417440000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.500000000000000000
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."tempatLahir"], [frxDBDatasetPasien."tglLahi' +
            'r"]')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 207.874150000000000000
        Top = 41.574830000000000000
        Width = 185.196970000000000000
        Height = 34.015770000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.500000000000000000
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."alamat"],[<frxDBDatasetPasien."kelurahan">]' +
            ',[<frxDBDatasetPasien."kecamatan">]')
        ParentFont = False
      end
    end
  end
  object frxrprtLabelVersiPdc: TfrxReport
    Version = '4.12.6'
    DataSet = frxdbdtstPasien
    DataSetName = 'frxDBDatasetPasien'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43774.659881574100000000
    ReportOptions.LastChange = 44006.584678819400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1193
    Top = 586
    Datasets = <
      item
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 50.000000000000000000
      PaperHeight = 30.000000000000000000
      PaperSize = 256
      LeftMargin = 2.500000000000000000
      RightMargin = 2.500000000000000000
      TopMargin = 2.500000000000000000
      BottomMargin = 2.500000000000000000
      Columns = 2
      ColumnWidth = 50.000000000000000000
      ColumnPositions.Strings = (
        '0'
        '50')
      BinOtherPages = 256
      object frxDBDatasetPasiennoRekamedis: TfrxMemoView
        Left = 3.779530000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."noRekamedis"] ([frxDBDatasetPasien."jenisKe' +
            'lamin"]),')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Left = 204.094620000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."noRekamedis"] ([frxDBDatasetPasien."jenisKe' +
            'lamin"])')
        ParentFont = False
      end
      object frxDBDatasetPasiennmPasien: TfrxMemoView
        Left = 3.779530000000000000
        Top = 15.118120000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'nmPasien'
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          '[frxDBDatasetPasien."nmPasien"]')
        ParentFont = False
      end
      object frxDBDatasetPasiennmPasien1: TfrxMemoView
        Left = 204.094620000000000000
        Top = 15.118120000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'nmPasien'
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          '[frxDBDatasetPasien."nmPasien"]')
        ParentFont = False
      end
      object frxDBDatasetPasientglLahir: TfrxMemoView
        Left = 3.779530000000000000
        Top = 30.236240000000000000
        Width = 181.417440000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."tempatLahir"], [frxDBDatasetPasien."tglLahi' +
            'r"]')
        ParentFont = False
      end
      object frxDBDatasetPasienalamat: TfrxMemoView
        Left = 3.779530000000000000
        Top = 52.913420000000000000
        Width = 158.740260000000000000
        Height = 37.795300000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."alamat"],[frxDBDatasetPasien."kelurahan"],[' +
            'frxDBDatasetPasien."kecamatan"]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 204.094620000000000000
        Top = 45.354360000000000000
        Width = 185.196970000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          '[frxDBDatasetPasien."alamat"] [frxDBDatasetPasien."provinsi"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 204.094620000000000000
        Top = 26.456710000000000000
        Width = 181.417440000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."tempatLahir"], [frxDBDatasetPasien."tglLahi' +
            'r"]')
        ParentFont = False
      end
    end
  end
  object mm1: TMainMenu
    Left = 1066
    Top = 75
    object SETINGPRINTER1: TMenuItem
      Caption = 'SETTING PRINTER'
      OnClick = SETINGPRINTER1Click
    end
    object DESAINPRINT1: TMenuItem
      Caption = 'DESAIN PRINT'
      object Label2x11: TMenuItem
        Caption = 'label2x1'
        OnClick = Label2x11Click
      end
      object Gelang1: TMenuItem
        Caption = 'gelang'
        OnClick = Gelang1Click
      end
      object Kartu1: TMenuItem
        Caption = 'kartuberobat'
        OnClick = Kartu1Click
      end
      object LABELVERSIPDC1: TMenuItem
        Caption = 'LABEL VERSI PDC'
        OnClick = LABELVERSIPDC1Click
      end
    end
    object DAFTARRAWATINAP1: TMenuItem
      Caption = 'DAFTAR RAWAT INAP'
      OnClick = DAFTARRAWATINAP1Click
    end
  end
  object frxdsgnr1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 1129
    Top = 562
  end
end
