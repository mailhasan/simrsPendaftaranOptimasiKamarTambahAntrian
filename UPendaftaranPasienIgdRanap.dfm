object FPendaftaranPasienRawatInap: TFPendaftaranPasienRawatInap
  Left = 179
  Top = 48
  Width = 1517
  Height = 973
  Caption = 'PENDAFTARAN PASIEN RAWAT INAP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mmRawatInap
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcRawatInapUGD: TPageControl
    Left = 0
    Top = 0
    Width = 1501
    Height = 914
    ActivePage = tsUgd
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    object tsrawatinap: TTabSheet
      Caption = 'RAWAT INAP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -50
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object pnlAtas: TPanel
        Left = 0
        Top = 0
        Width = 1493
        Height = 57
        Align = alTop
        Caption = 'PENDAFTARAN RAWAT INAP'
        Color = 11773474
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object pnlKeluar: TPanel
          Left = 1285
          Top = 1
          Width = 207
          Height = 55
          Align = alRight
          Caption = 'KELUAR'
          Color = 5855743
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
          OnClick = pnlKeluarClick
        end
      end
      object pnlKanan: TPanel
        Left = 1283
        Top = 57
        Width = 210
        Height = 768
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object dxnvbrMenu: TdxNavBar
          Left = 1
          Top = 1
          Width = 208
          Height = 766
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Times New Roman'
          Font.Style = []
          ActiveGroupIndex = 0
          TabOrder = 0
          View = 18
          ViewStyle.ColorSchemeName = 'Blue'
          OptionsStyle.DefaultStyles.Background.BackColor = 15461308
          OptionsStyle.DefaultStyles.Background.BackColor2 = 11773474
          OptionsStyle.DefaultStyles.Background.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.Background.Font.Color = clWindowText
          OptionsStyle.DefaultStyles.Background.Font.Height = -11
          OptionsStyle.DefaultStyles.Background.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.Background.Font.Style = []
          OptionsStyle.DefaultStyles.Background.HAlignment = haLeft
          OptionsStyle.DefaultStyles.Button.BackColor = 14857710
          OptionsStyle.DefaultStyles.Button.BackColor2 = clNone
          OptionsStyle.DefaultStyles.Button.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.Button.Font.Color = clWindowText
          OptionsStyle.DefaultStyles.Button.Font.Height = -11
          OptionsStyle.DefaultStyles.Button.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.Button.Font.Style = []
          OptionsStyle.DefaultStyles.Button.HAlignment = haLeft
          OptionsStyle.DefaultStyles.GroupBackground.BackColor = 15461308
          OptionsStyle.DefaultStyles.GroupBackground.BackColor2 = 11773474
          OptionsStyle.DefaultStyles.GroupBackground.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.GroupBackground.Font.Color = clWindowText
          OptionsStyle.DefaultStyles.GroupBackground.Font.Height = -11
          OptionsStyle.DefaultStyles.GroupBackground.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.GroupBackground.Font.Style = []
          OptionsStyle.DefaultStyles.GroupBackground.HAlignment = haLeft
          OptionsStyle.DefaultStyles.GroupControl.BackColor = 15461308
          OptionsStyle.DefaultStyles.GroupControl.BackColor2 = 11773474
          OptionsStyle.DefaultStyles.GroupControl.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.GroupControl.Font.Color = clWindowText
          OptionsStyle.DefaultStyles.GroupControl.Font.Height = -11
          OptionsStyle.DefaultStyles.GroupControl.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.GroupControl.Font.Style = []
          OptionsStyle.DefaultStyles.GroupControl.HAlignment = haLeft
          OptionsStyle.DefaultStyles.GroupHeader.BackColor = clPurple
          OptionsStyle.DefaultStyles.GroupHeader.BackColor2 = clNone
          OptionsStyle.DefaultStyles.GroupHeader.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.GroupHeader.Font.Color = clWindowText
          OptionsStyle.DefaultStyles.GroupHeader.Font.Height = -11
          OptionsStyle.DefaultStyles.GroupHeader.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.GroupHeader.Font.Style = [fsBold]
          OptionsStyle.DefaultStyles.GroupHeader.HAlignment = haLeft
          OptionsStyle.DefaultStyles.GroupHeaderActive.BackColor = clBlue
          OptionsStyle.DefaultStyles.GroupHeaderActive.BackColor2 = clBlue
          OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Color = clCaptionText
          OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Height = -16
          OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Style = [fsBold]
          OptionsStyle.DefaultStyles.GroupHeaderActive.HAlignment = haLeft
          object dxnvbrgrpMenuGroupMenu: TdxNavBarGroup
            Caption = 'Menu'
            SelectedLinkIndex = -1
            TopVisibleLinkIndex = 0
            Links = <
              item
                Item = dxnvbrtmMenuItemRiwayatKunjungan
              end
              item
                Item = dxnvbrtmMenuItemEdit
              end
              item
                Item = dxnvbrtmMenuItemKoreksiKeluarga
              end
              item
                Item = dxnvbrtmMenuItemEditPenjamin
              end
              item
                Item = dxnvbrtmMenuItemBataslPasien
              end
              item
                Item = dxnvbrtmMenuItemJadwalDokter
              end
              item
                Item = dxnvbrtmMenuItemDaftarHariIni
              end
              item
                Item = dxnvbrtmMenuItemInfoTersediaKamar
              end
              item
                Item = dxnvbrtmMenuItemAsesment
              end
              item
                Item = dxnvbrtmMenuItemDaftarDataPasienRanap
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
            Caption = 'RIWAYAT KUNJUNGAN'
            OnClick = dxnvbrtmMenuItemRiwayatKunjunganClick
          end
          object dxnvbrtmMenuItemEdit: TdxNavBarItem
            Caption = 'BIODATA PASIEN'
            OnClick = dxnvbrtmMenuItemEditClick
          end
          object dxnvbrtmMenuItemKoreksiKeluarga: TdxNavBarItem
            Caption = 'PENANGGUNG JAWAB'
            OnClick = dxnvbrtmMenuItemKoreksiKeluargaClick
          end
          object dxnvbrtmMenuItemBataslPasien: TdxNavBarItem
            Caption = 'BATAL PASIEN'
            OnClick = dxnvbrtmMenuItemBataslPasienClick
          end
          object dxnvbrtmMenuItemJadwalDokter: TdxNavBarItem
            Caption = 'JADWAL DOKTER'
          end
          object dxnvbrtmMenuItemLaporan: TdxNavBarItem
            Caption = 'LAPORAN'
            OnClick = dxnvbrtmMenuItemLaporanClick
          end
          object dxnvbrtmMenuItemDaftarHariIni: TdxNavBarItem
            Caption = 'DAFTAR HARI INI'
            OnClick = dxnvbrtmMenuItemDaftarHariIniClick
          end
          object dxnvbrtmMenuItemKeluar: TdxNavBarItem
            Caption = 'KELUAR'
            OnClick = dxnvbrtmMenuItemKeluarClick
          end
          object dxnvbrtmMenuItemAsesment: TdxNavBarItem
            Caption = 'ASESMENT'
            Visible = False
          end
          object dxnvbrtmMenuItemEditPenjamin: TdxNavBarItem
            Caption = 'EDIT PENJAMIN'
          end
          object dxnvbrtmMenuItemInfoTersediaKamar: TdxNavBarItem
            Caption = 'INFORMASI KAMAR'
            OnClick = dxnvbrtmMenuItemInfoTersediaKamarClick
          end
          object dxnvbrtmMenuItemDaftarDataPasienRanap: TdxNavBarItem
            Caption = 'DAFTAR PASIEN RAWAT INAP'
            OnClick = dxnvbrtmMenuItemDaftarDataPasienRanapClick
          end
        end
      end
      object pnlTegah: TPanel
        Left = 0
        Top = 57
        Width = 1283
        Height = 768
        Align = alClient
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object pnlAtas1: TPanel
          Left = 1
          Top = 1
          Width = 1281
          Height = 96
          Align = alTop
          Color = clSkyBlue
          TabOrder = 0
          object grpNoRm: TGroupBox
            Left = 1
            Top = 1
            Width = 664
            Height = 94
            Align = alLeft
            Color = 15461308
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
              Left = 120
              Top = 16
              Width = 186
              Height = 27
              Date = 43509.432595706020000000
              Time = 43509.432595706020000000
              TabOrder = 0
            end
            object edtNoRekamedis: TEdit
              Left = 120
              Top = 48
              Width = 185
              Height = 27
              TabOrder = 1
              OnClick = edtNoRekamedisClick
              OnKeyPress = edtNoRekamedisKeyPress
            end
            object btnPasienBaru: TButton
              Left = 320
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
              TabOrder = 2
              Visible = False
            end
            object btnPasienLama: TButton
              Left = 320
              Top = 16
              Width = 137
              Height = 25
              Action = actPasienLama
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
          end
          object grpNoRegistrasi: TGroupBox
            Left = 665
            Top = 1
            Width = 615
            Height = 94
            Align = alClient
            Color = 15461308
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object lblNoRegistrasi: TLabel
              Left = 8
              Top = 48
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
              Left = 8
              Top = 16
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
              Left = 160
              Top = 48
              Width = 201
              Height = 27
              Enabled = False
              TabOrder = 0
            end
            object edtKunjungan: TEdit
              Left = 160
              Top = 16
              Width = 201
              Height = 27
              TabOrder = 1
            end
          end
        end
        object grpDataPasien: TGroupBox
          Left = 1
          Top = 97
          Width = 664
          Height = 670
          Align = alLeft
          Caption = 'DATA INDENTITAS PASIEN'
          Color = 15461308
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
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
            Top = 64
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
            Left = 16
            Top = 96
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
            Top = 128
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
            Top = 160
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
            Top = 192
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
            Left = 16
            Top = 256
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
            Top = 224
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
            Top = 320
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
            Top = 352
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
            Top = 384
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
            Top = 416
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
            Top = 448
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
            Top = 192
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
            Top = 160
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
          object lblNoTelpone: TLabel
            Left = 384
            Top = 224
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
          object edtNoIdentitas: TEdit
            Left = 192
            Top = 24
            Width = 457
            Height = 27
            Enabled = False
            TabOrder = 0
          end
          object edtNmLengkap: TEdit
            Left = 192
            Top = 56
            Width = 457
            Height = 27
            Enabled = False
            TabOrder = 1
          end
          object edtTempatLahir: TEdit
            Left = 192
            Top = 88
            Width = 201
            Height = 27
            Enabled = False
            TabOrder = 2
          end
          object edtTglLahir: TEdit
            Left = 408
            Top = 88
            Width = 241
            Height = 27
            Enabled = False
            TabOrder = 3
          end
          object edtTahun: TEdit
            Left = 192
            Top = 120
            Width = 457
            Height = 27
            Enabled = False
            TabOrder = 4
          end
          object edtJenisKelamin: TEdit
            Left = 192
            Top = 152
            Width = 177
            Height = 27
            Enabled = False
            TabOrder = 5
          end
          object edtPendidikan: TEdit
            Left = 192
            Top = 184
            Width = 177
            Height = 27
            Enabled = False
            TabOrder = 6
          end
          object edtPekerjaan: TEdit
            Left = 192
            Top = 216
            Width = 177
            Height = 27
            Enabled = False
            TabOrder = 7
          end
          object mmoAlamat: TMemo
            Left = 192
            Top = 248
            Width = 457
            Height = 65
            Enabled = False
            TabOrder = 8
          end
          object edtKelurahanDesa: TEdit
            Left = 192
            Top = 320
            Width = 457
            Height = 27
            Enabled = False
            TabOrder = 9
          end
          object edtKecamatan: TEdit
            Left = 192
            Top = 352
            Width = 457
            Height = 27
            Enabled = False
            TabOrder = 10
          end
          object edtKabupaten: TEdit
            Left = 192
            Top = 384
            Width = 457
            Height = 27
            Enabled = False
            TabOrder = 11
          end
          object edtProvinsi: TEdit
            Left = 192
            Top = 416
            Width = 457
            Height = 27
            Enabled = False
            TabOrder = 12
          end
          object edtKodePos: TEdit
            Left = 192
            Top = 448
            Width = 193
            Height = 27
            Enabled = False
            TabOrder = 13
          end
          object edtBahasa: TEdit
            Left = 496
            Top = 184
            Width = 153
            Height = 27
            Enabled = False
            TabOrder = 14
          end
          object edtAgama: TEdit
            Left = 496
            Top = 152
            Width = 153
            Height = 27
            Enabled = False
            TabOrder = 15
          end
          object edtLamaBaru: TEdit
            Left = 488
            Top = 24
            Width = 121
            Height = 27
            Enabled = False
            TabOrder = 16
            Visible = False
          end
          object edtNoTelepone: TEdit
            Left = 496
            Top = 216
            Width = 153
            Height = 27
            TabOrder = 17
          end
          object grpKeteranganTombol: TGroupBox
            Left = 2
            Top = 593
            Width = 660
            Height = 75
            Align = alBottom
            Caption = 'KETERANGAN TOMBOL PINTAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 18
            object lblCtrlP: TLabel
              Left = 8
              Top = 24
              Width = 142
              Height = 15
              Caption = 'CTRL+P : PASIEN LAMA'
            end
            object lblctrlB: TLabel
              Left = 8
              Top = 40
              Width = 142
              Height = 15
              Caption = 'CTRL+B : PASIEN BARU'
            end
            object lblCTRLS: TLabel
              Left = 8
              Top = 56
              Width = 107
              Height = 15
              Caption = 'CTRL+S : SIMPAN'
            end
            object lblCTRLT: TLabel
              Left = 192
              Top = 51
              Width = 113
              Height = 15
              Caption = 'CTRL+T : TAMBAH'
            end
            object lblCTRLK: TLabel
              Left = 192
              Top = 21
              Width = 166
              Height = 15
              Caption = 'CTRL+K : KARTU BEROBAT'
            end
            object lblGelang: TLabel
              Left = 192
              Top = 37
              Width = 111
              Height = 15
              Caption = 'CTRL+G : GELANG'
            end
            object lblCTRLL: TLabel
              Left = 424
              Top = 21
              Width = 122
              Height = 15
              Caption = 'CTRL+L: LABEL 2X1'
            end
            object lblCTRLR: TLabel
              Left = 424
              Top = 37
              Width = 105
              Height = 15
              Caption = 'CTRL+R: KARCIS'
            end
            object lblESC: TLabel
              Left = 424
              Top = 53
              Width = 84
              Height = 15
              Caption = 'ECS : KELUAR'
            end
          end
        end
        object grpDataPendaftaran: TGroupBox
          Left = 665
          Top = 97
          Width = 617
          Height = 670
          Align = alClient
          Caption = 'DATA DAFTAR'
          Color = 15461308
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object lblAsalPasien: TLabel
            Left = 8
            Top = 24
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
            Left = 8
            Top = 88
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
          object lblDokter: TLabel
            Left = 16
            Top = 528
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
          object lblJadwal: TLabel
            Left = 16
            Top = 560
            Width = 53
            Height = 18
            Caption = 'Jadwal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPenjamin: TLabel
            Left = 8
            Top = 104
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
          object lblIsiAsalPasien: TLabel
            Left = 8
            Top = 56
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
          object cbbJadwalDokter: TComboBox
            Left = 160
            Top = 560
            Width = 201
            Height = 27
            CharCase = ecUpperCase
            ItemHeight = 19
            TabOrder = 0
            OnKeyPress = cbbJadwalDokterKeyPress
            Items.Strings = (
              'PAGI'
              'SIANG'
              'SORE'
              'MALAM')
          end
          object cbbAsalPasien: TcxLookupComboBox
            Left = 136
            Top = 16
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
            Width = 409
          end
          object cbbCaraBayar: TcxLookupComboBox
            Left = 136
            Top = 80
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'kdCaraBayar'
            Properties.ListColumns = <
              item
                Caption = 'CARA BAYAR'
                FieldName = 'carabayar'
              end>
            Properties.ListSource = DataSimrs.dsCaraBayar
            Properties.MaxLength = 150
            TabOrder = 2
            OnKeyPress = cbbCaraBayarKeyPress
            Width = 409
          end
          object cbbPenjamin: TcxLookupComboBox
            Left = 136
            Top = 104
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'kdPenjamin'
            Properties.ListColumns = <
              item
                Caption = 'PENJAMIN'
                FieldName = 'penjamin'
              end>
            Properties.ListSource = DataSimrs.dsPenjamin
            Properties.MaxLength = 200
            TabOrder = 3
            OnKeyPress = cbbPenjaminKeyPress
            Width = 409
          end
          object cbbDokter: TcxLookupComboBox
            Left = 160
            Top = 528
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'kdPetugasMedis'
            Properties.ListColumns = <
              item
                Caption = 'DOKTER'
                FieldName = 'namapetugasMedis'
              end>
            Properties.ListSource = DataSimrs.dsDokter
            TabOrder = 4
            OnKeyPress = cbbDokterKeyPress
            Width = 385
          end
          object grpDetailKamar: TGroupBox
            Left = 8
            Top = 336
            Width = 665
            Height = 177
            Caption = 'DETAIL KAMAR RAWAT INAP'
            TabOrder = 5
            object lblRawatInap: TLabel
              Left = 8
              Top = 32
              Width = 86
              Height = 18
              Caption = 'Rawat Inap'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblKamar: TLabel
              Left = 8
              Top = 96
              Width = 123
              Height = 18
              Caption = 'No. Kamar / Bed'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblKelas: TLabel
              Left = 8
              Top = 128
              Width = 94
              Height = 18
              Caption = 'Kelas / Tarif'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl4: TLabel
              Left = 8
              Top = 64
              Width = 112
              Height = 18
              Caption = 'Ranap / Kamar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblStatusKamar: TLabel
              Left = 8
              Top = 160
              Width = 100
              Height = 18
              Caption = 'Status Kamar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtRawatInap: TEdit
              Left = 152
              Top = 24
              Width = 385
              Height = 27
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 0
            end
            object edtNoKamar: TEdit
              Left = 152
              Top = 88
              Width = 193
              Height = 27
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 1
            end
            object edtKelas: TEdit
              Left = 152
              Top = 120
              Width = 153
              Height = 27
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object edtTarif: TEdit
              Left = 352
              Top = 120
              Width = 185
              Height = 27
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object edtKdRawatInap: TEdit
              Left = 152
              Top = 56
              Width = 193
              Height = 27
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 4
            end
            object edtNoBed: TEdit
              Left = 352
              Top = 88
              Width = 185
              Height = 27
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 5
            end
            object edtKdTarifKamar: TEdit
              Left = 352
              Top = 56
              Width = 185
              Height = 27
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 6
            end
            object edtStatusKamar: TEdit
              Left = 152
              Top = 152
              Width = 385
              Height = 27
              Enabled = False
              TabOrder = 7
            end
            object btnKelas: TButton
              Left = 304
              Top = 120
              Width = 41
              Height = 25
              Caption = 'Kelas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnClick = btnKelasClick
            end
          end
          object grpCariRawatInap: TGroupBox
            Left = 8
            Top = 256
            Width = 665
            Height = 81
            Caption = 'CARI RAWAT INAP'
            TabOrder = 6
            object cbbKamar: TcxLookupComboBox
              Left = 8
              Top = 49
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Properties.DropDownWidth = 1000
              Properties.KeyFieldNames = 'kdTarifKelasKmr'
              Properties.ListColumns = <
                item
                  Caption = 'RAWAT INAP'
                  Width = 150
                  FieldName = 'rawatInap'
                end
                item
                  Caption = 'KELAS'
                  Width = 100
                  FieldName = 'kelas'
                end
                item
                  Caption = 'NO BED'
                  Width = 100
                  FieldName = 'noBed'
                end
                item
                  Caption = 'NO KAMAR'
                  FieldName = 'noKamar'
                end
                item
                  Caption = 'JENIS GENDER BED'
                  FieldName = 'jenisGenderBed'
                end
                item
                  Caption = 'TARIF KAMAR'
                  FieldName = 'tarifKmr'
                end
                item
                  Caption = 'STATUS BED'
                  FieldName = 'statusBed'
                end>
              Properties.ListSource = DataSimrs.dsvw_datarawatinap
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Arial Narrow'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnKeyPress = cbbKamarKeyPress
              Width = 529
            end
            object btnCariKamarManual: TButton
              Left = 8
              Top = 24
              Width = 201
              Height = 25
              Caption = 'CARI KAMAR MANUAL'
              TabOrder = 1
              OnClick = btnCariKamarManualClick
            end
          end
          object grpKartuPenjamin: TGroupBox
            Left = 8
            Top = 136
            Width = 665
            Height = 121
            Caption = 'KARTU PENJAMIN'
            TabOrder = 7
            object lblNoKartu: TLabel
              Left = 8
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
              Left = 8
              Top = 64
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
              Left = 8
              Top = 96
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
              Left = 136
              Top = 24
              Width = 401
              Height = 27
              TabOrder = 0
              OnKeyPress = edtNoKartuKeyPress
            end
            object edtNoSep: TEdit
              Left = 136
              Top = 56
              Width = 401
              Height = 27
              TabOrder = 1
              OnKeyPress = edtNoSepKeyPress
            end
            object edtAtasNama: TEdit
              Left = 136
              Top = 88
              Width = 401
              Height = 27
              TabOrder = 2
              OnKeyPress = edtAtasNamaKeyPress
            end
          end
          object edtIsiAsalPasien: TEdit
            Left = 136
            Top = 48
            Width = 409
            Height = 27
            TabOrder = 8
            OnKeyPress = edtIsiAsalPasienKeyPress
          end
        end
      end
      object pnlBawah: TPanel
        Left = 0
        Top = 825
        Width = 1493
        Height = 41
        Align = alBottom
        Color = 11773474
        TabOrder = 3
        object btnSimpan: TButton
          Left = 670
          Top = 5
          Width = 99
          Height = 33
          Action = actSimpan
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object btnTambah: TButton
          Left = 776
          Top = 5
          Width = 97
          Height = 33
          Action = actTambah
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object btnKartuBerobat: TButton
          Left = 879
          Top = 5
          Width = 130
          Height = 33
          Action = actKartuBerobat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object btnLabel: TButton
          Left = 1064
          Top = 5
          Width = 97
          Height = 33
          Action = actGelang
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object btnLabel2x1: TButton
          Left = 1168
          Top = 8
          Width = 97
          Height = 30
          Action = actLabel2x1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object tsUgd: TTabSheet
      Caption = 'IGD'
      ImageIndex = 1
      object pnlAtasUgd: TPanel
        Left = 0
        Top = 0
        Width = 1493
        Height = 57
        Align = alTop
        Caption = 'PENDAFTARAN IGD'
        Color = clMaroon
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindow
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object pnlkeluar1: TPanel
          Left = 1309
          Top = 1
          Width = 183
          Height = 55
          Align = alRight
          Caption = 'KELUAR'
          Color = 5855743
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindow
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
          OnClick = pnlkeluar1Click
        end
      end
      object pnlBawahUgd: TPanel
        Left = 0
        Top = 822
        Width = 1493
        Height = 44
        Align = alBottom
        Color = clMaroon
        TabOrder = 1
        object btnSimpanUgd: TButton
          Left = 640
          Top = 8
          Width = 99
          Height = 31
          Action = actSimpanIgd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object btnTambahUgd: TButton
          Left = 745
          Top = 8
          Width = 97
          Height = 31
          Action = actTambahIgd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object btnKartuBerobatUgd: TButton
          Left = 849
          Top = 8
          Width = 144
          Height = 31
          Action = actKartuBerobatIgd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object btnLabelUgd: TButton
          Left = 1000
          Top = 8
          Width = 97
          Height = 31
          Action = actGelangIgd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object btnLabel2x1Ugd: TButton
          Left = 1104
          Top = 8
          Width = 105
          Height = 31
          Action = actLabel2x1Igd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object btnKarcisUgd: TButton
          Left = 1216
          Top = 8
          Width = 97
          Height = 31
          Action = actKarcisIgd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
      end
      object pnlTegahUgd: TPanel
        Left = 0
        Top = 57
        Width = 1309
        Height = 765
        Align = alClient
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object GroupBox1: TGroupBox
          Left = 1
          Top = 89
          Width = 632
          Height = 675
          Align = alLeft
          Caption = 'DATA IDENTITAS PASIEN'
          Color = 15920124
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 24
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
          object Label2: TLabel
            Left = 16
            Top = 58
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
          object Label3: TLabel
            Left = 16
            Top = 96
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
          object Label4: TLabel
            Left = 16
            Top = 128
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
          object Label8: TLabel
            Left = 16
            Top = 158
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
          object Label9: TLabel
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
          object Label10: TLabel
            Left = 16
            Top = 248
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
          object Label11: TLabel
            Left = 16
            Top = 218
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
          object Label12: TLabel
            Left = 16
            Top = 320
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
          object Label13: TLabel
            Left = 16
            Top = 352
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
          object Label14: TLabel
            Left = 16
            Top = 384
            Width = 5
            Height = 19
          end
          object Label15: TLabel
            Left = 16
            Top = 384
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
          object Label16: TLabel
            Left = 16
            Top = 416
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
          object Label17: TLabel
            Left = 16
            Top = 448
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
          object Label18: TLabel
            Left = 344
            Top = 184
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
          object Label19: TLabel
            Left = 344
            Top = 152
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
          object lbl23: TLabel
            Left = 342
            Top = 218
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
          object edtNoIdentitiasKtpUgd: TEdit
            Left = 176
            Top = 24
            Width = 441
            Height = 27
            Enabled = False
            TabOrder = 0
          end
          object edtNmLengkapUgd: TEdit
            Left = 176
            Top = 56
            Width = 441
            Height = 27
            Enabled = False
            TabOrder = 1
          end
          object edtTempatLahirUgd: TEdit
            Left = 176
            Top = 88
            Width = 177
            Height = 27
            Enabled = False
            TabOrder = 2
          end
          object edtTanggalLahirUgd: TEdit
            Left = 368
            Top = 88
            Width = 249
            Height = 27
            Enabled = False
            TabOrder = 3
          end
          object edtTahunUgd: TEdit
            Left = 176
            Top = 120
            Width = 441
            Height = 27
            Enabled = False
            TabOrder = 4
          end
          object edtJkUgd: TEdit
            Left = 176
            Top = 152
            Width = 153
            Height = 27
            Enabled = False
            TabOrder = 5
          end
          object edtPendidikanUgd: TEdit
            Left = 176
            Top = 184
            Width = 153
            Height = 27
            Enabled = False
            TabOrder = 6
          end
          object edtPekerjaanUgd: TEdit
            Left = 176
            Top = 216
            Width = 153
            Height = 27
            Enabled = False
            TabOrder = 7
          end
          object mmoAlamatUgd: TMemo
            Left = 176
            Top = 248
            Width = 441
            Height = 65
            Enabled = False
            TabOrder = 8
          end
          object edtKelurahanUgd: TEdit
            Left = 176
            Top = 320
            Width = 441
            Height = 27
            Enabled = False
            TabOrder = 9
          end
          object edtKecamatanUgd: TEdit
            Left = 176
            Top = 352
            Width = 441
            Height = 27
            Enabled = False
            TabOrder = 10
          end
          object edtKabupatenUgd: TEdit
            Left = 176
            Top = 384
            Width = 441
            Height = 27
            Enabled = False
            TabOrder = 11
          end
          object edtProvinsiUgd: TEdit
            Left = 176
            Top = 416
            Width = 441
            Height = 27
            Enabled = False
            TabOrder = 12
          end
          object edtKodePosUgd: TEdit
            Left = 176
            Top = 448
            Width = 177
            Height = 27
            Enabled = False
            TabOrder = 13
          end
          object edtBahasaUgd: TEdit
            Left = 448
            Top = 184
            Width = 169
            Height = 27
            Enabled = False
            TabOrder = 14
          end
          object edtAgamaUgd: TEdit
            Left = 448
            Top = 152
            Width = 169
            Height = 27
            Enabled = False
            TabOrder = 15
          end
          object edtLamaBaruUgd: TEdit
            Left = 472
            Top = 24
            Width = 145
            Height = 27
            Enabled = False
            TabOrder = 16
            Visible = False
          end
          object edtNoTeleponeIgd: TEdit
            Left = 448
            Top = 216
            Width = 169
            Height = 27
            TabOrder = 17
          end
        end
        object grpDataDaftarUgd: TGroupBox
          Left = 633
          Top = 89
          Width = 675
          Height = 675
          Align = alClient
          Caption = 'DATA DAFTAR'
          Color = 15920124
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object lbl2: TLabel
            Left = 16
            Top = 24
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
          object lbl3: TLabel
            Left = 16
            Top = 88
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
          object lbl5: TLabel
            Left = 16
            Top = 256
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
          object lbl6: TLabel
            Left = 16
            Top = 288
            Width = 53
            Height = 18
            Caption = 'Jadwal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl7: TLabel
            Left = 16
            Top = 108
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
          object lbl24: TLabel
            Left = 16
            Top = 56
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
          object grp2: TGroupBox
            Left = 8
            Top = 320
            Width = 609
            Height = 97
            Caption = 'DATA TAMPIL SETELAH TEKAN TOMBOL SIMPAN'
            TabOrder = 4
            object lbl8: TLabel
              Left = 16
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
            object lbl9: TLabel
              Left = 16
              Top = 64
              Width = 133
              Height = 18
              Caption = 'Konsultasi Dokter'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtKarcisUgd: TEdit
              Left = 184
              Top = 24
              Width = 201
              Height = 27
              TabOrder = 0
              OnKeyPress = edtKarcisUgdKeyPress
            end
            object edtKonsultasiUgd: TEdit
              Left = 184
              Top = 56
              Width = 201
              Height = 27
              TabOrder = 1
              OnKeyPress = edtKonsultasiUgdKeyPress
            end
          end
          object cbbAsalPasienUgd: TcxLookupComboBox
            Left = 160
            Top = 16
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'kdAsalPasien'
            Properties.ListColumns = <
              item
                Caption = 'ASAL PASIEN'
                FieldName = 'asalPasien'
              end>
            Properties.ListSource = DataSimrs.dsVw_dsAsalPasien
            TabOrder = 0
            OnKeyPress = cbbAsalPasienUgdKeyPress
            Width = 441
          end
          object cbbCaraBayarUgd: TcxLookupComboBox
            Left = 160
            Top = 80
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'kdCaraBayar'
            Properties.ListColumns = <
              item
                Caption = 'CARA BAYAR'
                FieldName = 'carabayar'
              end>
            Properties.ListSource = DataSimrs.dsCaraBayar
            Properties.MaxLength = 150
            TabOrder = 1
            OnKeyPress = cbbCaraBayarUgdKeyPress
            Width = 441
          end
          object cbbPenjaminUgd: TcxLookupComboBox
            Left = 160
            Top = 104
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'kdPenjamin'
            Properties.ListColumns = <
              item
                Caption = 'PENJAMIN'
                FieldName = 'penjamin'
              end>
            Properties.ListSource = DataSimrs.dsPenjamin
            Properties.MaxLength = 200
            TabOrder = 2
            OnKeyPress = cbbPenjaminUgdKeyPress
            Width = 441
          end
          object cbbDokterUgd: TcxLookupComboBox
            Left = 160
            Top = 256
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'kdPetugasMedis'
            Properties.ListColumns = <
              item
                Caption = 'DOKTER'
                FieldName = 'namapetugasMedis'
              end>
            Properties.ListSource = DataSimrs.dsDokter
            TabOrder = 3
            OnKeyPress = cbbDokterUgdKeyPress
            Width = 441
          end
          object edtIsiAsalRujukan: TEdit
            Left = 160
            Top = 48
            Width = 441
            Height = 27
            CharCase = ecUpperCase
            TabOrder = 5
            OnKeyPress = edtIsiAsalRujukanKeyPress
          end
          object grp5: TGroupBox
            Left = 8
            Top = 128
            Width = 609
            Height = 121
            Caption = 'KARTU PENJAMIN'
            TabOrder = 6
            object lbl25: TLabel
              Left = 8
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
            object lbl26: TLabel
              Left = 8
              Top = 59
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
            object lbl27: TLabel
              Left = 8
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
            object edtNoKartuUgd: TEdit
              Left = 152
              Top = 24
              Width = 441
              Height = 27
              CharCase = ecUpperCase
              TabOrder = 0
              OnKeyPress = edtNoKartuUgdKeyPress
            end
            object edtNoSepUgd: TEdit
              Left = 152
              Top = 56
              Width = 441
              Height = 27
              CharCase = ecUpperCase
              TabOrder = 1
              OnKeyPress = edtNoSepUgdKeyPress
            end
            object edtAtasNamaUgd: TEdit
              Left = 152
              Top = 88
              Width = 441
              Height = 27
              CharCase = ecUpperCase
              TabOrder = 2
              OnKeyPress = edtAtasNamaUgdKeyPress
            end
          end
          object cbbJadwalDokterUgd: TComboBox
            Left = 161
            Top = 288
            Width = 145
            Height = 27
            ItemHeight = 19
            TabOrder = 7
            OnKeyPress = cbbJadwalDokterUgdKeyPress
            Items.Strings = (
              'PAGI'
              'SIANG'
              'SORE'
              'MALAM')
          end
          object grp4: TGroupBox
            Left = 2
            Top = 588
            Width = 671
            Height = 85
            Align = alBottom
            Caption = 'KETERANGAN TOMBOL PINTAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            object lbl14: TLabel
              Left = 8
              Top = 24
              Width = 142
              Height = 15
              Caption = 'CTRL+P : PASIEN LAMA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl15: TLabel
              Left = 8
              Top = 40
              Width = 142
              Height = 15
              Caption = 'CTRL+B : PASIEN BARU'
            end
            object lbl16: TLabel
              Left = 8
              Top = 56
              Width = 107
              Height = 15
              Caption = 'CTRL+S : SIMPAN'
            end
            object lbl17: TLabel
              Left = 8
              Top = 72
              Width = 113
              Height = 15
              Caption = 'CTRL+T : TAMBAH'
            end
            object lbl18: TLabel
              Left = 192
              Top = 21
              Width = 166
              Height = 15
              Caption = 'CTRL+K : KARTU BEROBAT'
            end
            object lbl19: TLabel
              Left = 192
              Top = 37
              Width = 111
              Height = 15
              Caption = 'CTRL+G : GELANG'
            end
            object lbl20: TLabel
              Left = 192
              Top = 53
              Width = 122
              Height = 15
              Caption = 'CTRL+L: LABEL 2X1'
            end
            object lbl21: TLabel
              Left = 192
              Top = 69
              Width = 105
              Height = 15
              Caption = 'CTRL+R: KARCIS'
            end
            object lbl22: TLabel
              Left = 400
              Top = 21
              Width = 84
              Height = 15
              Caption = 'ECS : KELUAR'
            end
          end
        end
        object pnlAtasIgd1: TPanel
          Left = 1
          Top = 1
          Width = 1307
          Height = 88
          Align = alTop
          Color = clSkyBlue
          TabOrder = 2
          object grp1: TGroupBox
            Left = 1
            Top = 1
            Width = 632
            Height = 86
            Align = alLeft
            Color = 15920124
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object lbl10: TLabel
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
            object lbl11: TLabel
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
            object dtpTanggalUgd: TDateTimePicker
              Left = 120
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
            object edtNoRekamedisUgd: TEdit
              Left = 120
              Top = 48
              Width = 185
              Height = 27
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnDblClick = edtNoRekamedisUgdDblClick
              OnKeyPress = edtNoRekamedisUgdKeyPress
            end
            object btnPasienLamaIgd: TButton
              Left = 320
              Top = 16
              Width = 129
              Height = 25
              Caption = 'PASIEN LAMA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnClick = btnPasienLamaIgdClick
            end
            object btnBaru: TButton
              Left = 320
              Top = 48
              Width = 129
              Height = 25
              Caption = 'Pasien Baru'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              OnClick = btnBaruClick
            end
          end
          object grp3: TGroupBox
            Left = 633
            Top = 1
            Width = 673
            Height = 86
            Align = alClient
            Color = 15920124
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object lbl12: TLabel
              Left = 16
              Top = 48
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
            object lbl13: TLabel
              Left = 16
              Top = 16
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
            object edtNoRegistrasiUgd: TEdit
              Left = 160
              Top = 48
              Width = 185
              Height = 27
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object edtKunjunganKeUgd: TEdit
              Left = 160
              Top = 16
              Width = 185
              Height = 27
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
        end
      end
      object pnlKananUgd: TPanel
        Left = 1309
        Top = 57
        Width = 184
        Height = 765
        Align = alRight
        TabOrder = 3
        object dxnvbrUgd: TdxNavBar
          Left = 1
          Top = 1
          Width = 182
          Height = 763
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ActiveGroupIndex = 0
          TabOrder = 0
          View = 16
          OptionsStyle.DefaultStyles.Background.BackColor = 15920124
          OptionsStyle.DefaultStyles.Background.BackColor2 = clWindow
          OptionsStyle.DefaultStyles.Background.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.Background.Font.Color = clWindowText
          OptionsStyle.DefaultStyles.Background.Font.Height = -11
          OptionsStyle.DefaultStyles.Background.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.Background.Font.Style = []
          OptionsStyle.DefaultStyles.Background.HAlignment = haLeft
          OptionsStyle.DefaultStyles.GroupBackground.BackColor = 15920124
          OptionsStyle.DefaultStyles.GroupBackground.BackColor2 = clWindow
          OptionsStyle.DefaultStyles.GroupBackground.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.GroupBackground.Font.Color = clWindowText
          OptionsStyle.DefaultStyles.GroupBackground.Font.Height = -11
          OptionsStyle.DefaultStyles.GroupBackground.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.GroupBackground.Font.Style = []
          OptionsStyle.DefaultStyles.GroupBackground.HAlignment = haLeft
          OptionsStyle.DefaultStyles.GroupHeader.BackColor = clMaroon
          OptionsStyle.DefaultStyles.GroupHeader.BackColor2 = clNone
          OptionsStyle.DefaultStyles.GroupHeader.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.GroupHeader.Font.Color = clWindowText
          OptionsStyle.DefaultStyles.GroupHeader.Font.Height = -11
          OptionsStyle.DefaultStyles.GroupHeader.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.GroupHeader.Font.Style = [fsBold]
          OptionsStyle.DefaultStyles.GroupHeader.HAlignment = haLeft
          OptionsStyle.DefaultStyles.GroupHeaderActive.BackColor = 11181051
          OptionsStyle.DefaultStyles.GroupHeaderActive.BackColor2 = clWhite
          OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Color = clCaptionText
          OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Height = -11
          OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.GroupHeaderActive.Font.Style = [fsBold]
          OptionsStyle.DefaultStyles.GroupHeaderActive.HAlignment = haLeft
          OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.BackColor = 11181051
          OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.BackColor2 = clWhite
          OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.Font.Color = clCaptionText
          OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.Font.Height = -11
          OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.Font.Style = [fsBold]
          OptionsStyle.DefaultStyles.GroupHeaderActiveHotTracked.HAlignment = haLeft
          OptionsStyle.DefaultStyles.GroupHeaderActivePressed.BackColor = 11181051
          OptionsStyle.DefaultStyles.GroupHeaderActivePressed.BackColor2 = clWhite
          OptionsStyle.DefaultStyles.GroupHeaderActivePressed.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.GroupHeaderActivePressed.Font.Color = clCaptionText
          OptionsStyle.DefaultStyles.GroupHeaderActivePressed.Font.Height = -11
          OptionsStyle.DefaultStyles.GroupHeaderActivePressed.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.GroupHeaderActivePressed.Font.Style = [fsBold]
          OptionsStyle.DefaultStyles.GroupHeaderActivePressed.HAlignment = haLeft
          OptionsStyle.DefaultStyles.DropTargetGroup.AlphaBlending = 60
          OptionsStyle.DefaultStyles.DropTargetGroup.AlphaBlending2 = 60
          OptionsStyle.DefaultStyles.DropTargetGroup.BackColor = clMoneyGreen
          OptionsStyle.DefaultStyles.DropTargetGroup.BackColor2 = clWindow
          OptionsStyle.DefaultStyles.DropTargetGroup.Font.Charset = DEFAULT_CHARSET
          OptionsStyle.DefaultStyles.DropTargetGroup.Font.Color = clWindowText
          OptionsStyle.DefaultStyles.DropTargetGroup.Font.Height = -11
          OptionsStyle.DefaultStyles.DropTargetGroup.Font.Name = 'MS Sans Serif'
          OptionsStyle.DefaultStyles.DropTargetGroup.Font.Style = []
          OptionsStyle.DefaultStyles.DropTargetGroup.HAlignment = haLeft
          object dxnvbrgrpUgd: TdxNavBarGroup
            Caption = 'Menu'
            SelectedLinkIndex = -1
            TopVisibleLinkIndex = 0
            Links = <
              item
                Item = dxnvbrtmRiwayatKunjuganUgd
              end
              item
                Item = dxnvbrtmKorenksiBiodataUgd
              end
              item
                Item = dxnvbrtmKoreksiKeluargaUgd
              end
              item
                Item = dxnvbrtmBatalPasienUgd
              end
              item
                Item = dxnvbrtmJadwalDokterUgd
              end
              item
                Item = dxnvbrtmDaftarHariIniUgd
              end
              item
                Item = dxnvbrtmUgdItemAsesment
              end
              item
                Item = dxnvbrtmUgdPrintLabel
              end
              item
                Item = dxnvbrtmUgdDaftarPasienRanap
              end>
          end
          object dxnvbrgrpLaporanUgd: TdxNavBarGroup
            Caption = 'Laporan'
            SelectedLinkIndex = -1
            TopVisibleLinkIndex = 0
            Links = <
              item
                Item = dxnvbrtmLaporanUgd
              end>
          end
          object dxnvbrgrpUgdGroupKeluar: TdxNavBarGroup
            Caption = 'Keluar'
            SelectedLinkIndex = -1
            TopVisibleLinkIndex = 0
            Links = <
              item
                Item = dxnvbrtmUgdItemKeluar
              end>
          end
          object dxnvbrtmRiwayatKunjuganUgd: TdxNavBarItem
            Caption = 'RIWAYAT KUNJUNGAN'
            OnClick = dxnvbrtmRiwayatKunjuganUgdClick
          end
          object dxnvbrtmKorenksiBiodataUgd: TdxNavBarItem
            Caption = 'BIODATA PASIEN'
            OnClick = dxnvbrtmKorenksiBiodataUgdClick
          end
          object dxnvbrtmBatalPasienUgd: TdxNavBarItem
            Caption = 'BATAL PASIEN'
            OnClick = dxnvbrtmBatalPasienUgdClick
          end
          object dxnvbrtmKoreksiKeluargaUgd: TdxNavBarItem
            Caption = 'PENANGGUNG JAWAB PASIEN'
            OnClick = dxnvbrtmKoreksiKeluargaUgdClick
          end
          object dxnvbrtmJadwalDokterUgd: TdxNavBarItem
            Caption = 'JADWAL DOKTER'
          end
          object dxnvbrtmLaporanUgd: TdxNavBarItem
            Caption = 'LAPORAN'
            OnClick = dxnvbrtmLaporanUgdClick
          end
          object dxnvbrtmDaftarHariIniUgd: TdxNavBarItem
            Caption = 'DAFTAR HARI INI'
            OnClick = dxnvbrtmDaftarHariIniUgdClick
          end
          object dxnvbrtmUgdItemKeluar: TdxNavBarItem
            Caption = 'KELUAR'
            OnClick = dxnvbrtmUgdItemKeluarClick
          end
          object dxnvbrtmUgdItemAsesment: TdxNavBarItem
            Caption = 'Asesment'
            Visible = False
          end
          object dxnvbrtmUgdPrintLabel: TdxNavBarItem
            Caption = 'PRINT LABEL'
            OnClick = dxnvbrtmUgdPrintLabelClick
          end
          object dxnvbrtmUgdDaftarPasienRanap: TdxNavBarItem
            Caption = 'DAFTAR PASIEN RANAP'
            OnClick = dxnvbrtmUgdDaftarPasienRanapClick
          end
        end
      end
    end
  end
  object actlstRanap: TActionList
    Left = 101
    Top = 48
    object actPasienLama: TAction
      Caption = 'PASIEN LAMA'
      SecondaryShortCuts.Strings = (
        'Ctrl+P')
      OnExecute = actPasienLamaExecute
    end
    object actPasienBaru: TAction
      Caption = 'PASIEN BARU'
      SecondaryShortCuts.Strings = (
        'Ctrl+B')
    end
    object actSimpan: TAction
      Caption = 'SIMPAN'
      SecondaryShortCuts.Strings = (
        'Ctrl+S')
      OnExecute = actSimpanExecute
    end
    object actTambah: TAction
      Caption = 'TAMBAH'
      SecondaryShortCuts.Strings = (
        'Ctrl+T')
      OnExecute = actTambahExecute
    end
    object actGelang: TAction
      Caption = 'GELANG'
      SecondaryShortCuts.Strings = (
        'Ctrl+G')
      OnExecute = actGelangExecute
    end
    object actLabel2x1: TAction
      Caption = 'LABEL 2x1'
      SecondaryShortCuts.Strings = (
        'Ctrl+L')
      OnExecute = actLabel2x1Execute
    end
    object actKarcis: TAction
      Caption = 'KARCIS'
      SecondaryShortCuts.Strings = (
        'Ctrl+R')
    end
    object actKartuBerobat: TAction
      Caption = 'KARTU BEROBAT'
      SecondaryShortCuts.Strings = (
        'Ctrl+K')
      OnExecute = actKartuBerobatExecute
    end
  end
  object actlstIgd: TActionList
    Left = 181
    Top = 61
    object actSimpanIgd: TAction
      Caption = 'SIMPAN'
      SecondaryShortCuts.Strings = (
        'CTRL+S')
      OnExecute = actSimpanIgdExecute
    end
    object actTambahIgd: TAction
      Caption = 'TAMBAH'
      SecondaryShortCuts.Strings = (
        'CTRL+T')
      OnExecute = actTambahIgdExecute
    end
    object actKartuBerobatIgd: TAction
      Caption = 'KARTU BEROBAT'
      OnExecute = actKartuBerobatIgdExecute
    end
    object actGelangIgd: TAction
      Caption = 'GELANG'
      OnExecute = actGelangIgdExecute
    end
    object actLabel2x1Igd: TAction
      Caption = 'LABEL 2X1'
      OnExecute = actLabel2x1IgdExecute
    end
    object actKarcisIgd: TAction
      Caption = 'KARCIS'
      OnExecute = actKarcisIgdExecute
    end
  end
  object mmRawatInap: TMainMenu
    Left = 1086
    Top = 134
    object SETTINGPRINTER1: TMenuItem
      Caption = 'SETTING PRINTER'
      OnClick = SETTINGPRINTER1Click
    end
    object DESAINPRINT1: TMenuItem
      Caption = 'DESAIN PRINT'
      object label2x1IGD1: TMenuItem
        Caption = 'label2x1IGD'
        OnClick = label2x1IGD1Click
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
    ReportOptions.LastChange = 43905.819320069400000000
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
        Left = 3.779530000000000000
        Width = 185.196970000000000000
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
      object frxDBDatasetPasiennmPasien: TfrxMemoView
        Left = 3.779530000000000000
        Top = 11.338590000000000000
        Width = 181.417440000000000000
        Height = 26.456710000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Width = 1.500000000000000000
        Memo.UTF8 = (
          '[frxDBDatasetPasien."nmPasien"]')
        ParentFont = False
      end
      object frxDBDatasetPasientglLahir: TfrxMemoView
        Left = 3.779530000000000000
        Top = 37.795300000000000000
        Width = 181.417440000000000000
        Height = 18.897650000000000000
        ShowHint = False
        AutoWidth = True
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
        Left = 3.779530000000000000
        Top = 49.133890000000000000
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
        Frame.Width = 0.500000000000000000
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."alamat"],[frxDBDatasetPasien."kelurahan"],[' +
            'frxDBDatasetPasien."kecamatan"]')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 204.094620000000000000
        Top = 49.133890000000000000
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
        Frame.Width = 0.500000000000000000
        Memo.UTF8 = (
          
            '[frxDBDatasetPasien."alamat"],[frxDBDatasetPasien."kelurahan"],[' +
            'frxDBDatasetPasien."kecamatan"]')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Left = 204.094620000000000000
        Width = 185.196970000000000000
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
      object Memo2: TfrxMemoView
        Left = 204.094620000000000000
        Top = 11.338590000000000000
        Width = 181.417440000000000000
        Height = 26.456710000000000000
        ShowHint = False
        DataSet = frxdbdtstPasien
        DataSetName = 'frxDBDatasetPasien'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Width = 1.500000000000000000
        Memo.UTF8 = (
          '[frxDBDatasetPasien."nmPasien"]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 204.094620000000000000
        Top = 37.795300000000000000
        Width = 181.417440000000000000
        Height = 18.897650000000000000
        ShowHint = False
        AutoWidth = True
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
    ReportOptions.LastChange = 43878.573342604170000000
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
      'alamat=alamat'
      'kdPendidikan=kdPendidikan'
      'kdPekerjaan=kdPekerjaan'
      'kdKelurahan=kdKelurahan'
      'kdKecamatan=kdKecamatan'
      'kdKabupaten=kdKabupaten'
      'kdProvinsi=kdProvinsi'
      'kdPos=kdPos'
      'kdBahasa=kdBahasa'
      'noKtp=noKtp'
      'tglDaftar=tglDaftar'
      'caraBayar=caraBayar'
      'penjamin=penjamin'
      'noKartuPenjamin=noKartuPenjamin'
      'noSepPenjamin=noSepPenjamin'
      'atasNamaPenjamin=atasNamaPenjamin'
      'noTelepone=noTelepone'
      'kelurahan=kelurahan'
      'kecamatan=kecamatan'
      'kabupaten=kabupaten'
      'provinsi=provinsi'
      'agama=agama'
      'pekerjaan=pekerjaan'
      'pendidikan=pendidikan'
      'bahasa=bahasa')
    DataSet = DataSimrs.qryVwPasien
    BCDToCurrency = False
    Left = 793
    Top = 634
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
    ReportOptions.LastChange = 43889.444534953700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 857
    Top = 602
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
        Top = 177.637910000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = frxdbdtstKarcis
        DataSetName = 'frxDBDataset1'
        Memo.UTF8 = (
          ': [frxDBDataset1."tglDaftar"]')
      end
      object Memo16: TfrxMemoView
        Top = 166.299320000000000000
        Width = 94.488250000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Memo.UTF8 = (
          'TGL/JAM'
          'DAFTAR')
      end
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
    DataSet = DataSimrs.qryvw_pasienrawatjalan
    BCDToCurrency = False
    Left = 905
    Top = 586
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
    ReportOptions.LastChange = 43864.809054432900000000
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
    Left = 1229
    Top = 606
  end
end
