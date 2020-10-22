object FDaftarDataPasienRanap: TFDaftarDataPasienRanap
  Left = 353
  Top = 199
  Width = 1376
  Height = 598
  Align = alClient
  Caption = 'DAFTAR DATA PASIEN RAWAT INAP'
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTegah: TPanel
    Left = 0
    Top = 49
    Width = 1360
    Height = 457
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 1358
      Height = 455
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataSimrs.dsvw_pasienrawatinap
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        object cxgrdbclmnGrid1DBTableView1noRekamedis: TcxGridDBColumn
          Caption = 'NO RM'
          DataBinding.FieldName = 'noRekamedis'
          Width = 125
        end
        object cxgrdbclmnGrid1DBTableView1nmPasien: TcxGridDBColumn
          Caption = 'NAMA PASIEN'
          DataBinding.FieldName = 'nmPasien'
          Width = 332
        end
        object cxgrdbclmnGrid1DBTableView1tempatLahir: TcxGridDBColumn
          Caption = 'TEMPAT LAHIR'
          DataBinding.FieldName = 'tempatLahir'
          Width = 262
        end
        object cxgrdbclmnGrid1DBTableView1tglLahir: TcxGridDBColumn
          Caption = 'TGL LAHIR'
          DataBinding.FieldName = 'tglLahir'
          Width = 121
        end
        object cxgrdbclmnGrid1DBTableView1jenisKelamin: TcxGridDBColumn
          Caption = 'JK'
          DataBinding.FieldName = 'jenisKelamin'
          Width = 48
        end
        object cxgrdbclmnGrid1DBTableView1alamat: TcxGridDBColumn
          Caption = 'ALAMAT'
          DataBinding.FieldName = 'alamat'
          Width = 141
        end
        object cxgrdbclmnGrid1DBTableView1provinsi: TcxGridDBColumn
          Caption = 'PROVINSI'
          DataBinding.FieldName = 'provinsi'
          Width = 215
        end
        object cxgrdbclmnGrid1DBTableView1noDaftar: TcxGridDBColumn
          Caption = 'NO DAFTAR'
          DataBinding.FieldName = 'noDaftar'
          Width = 191
        end
        object cxgrdbclmnGrid1DBTableView1tglDaftar: TcxGridDBColumn
          Caption = 'TGL DAFTAR'
          DataBinding.FieldName = 'tglDaftar'
          Width = 205
        end
        object cxgrdbclmnGrid1DBTableView1tglPulang: TcxGridDBColumn
          Caption = 'TGL PULANG'
          DataBinding.FieldName = 'tglPulang'
          Width = 147
        end
        object cxgrdbclmnGrid1DBTableView1asalPasien: TcxGridDBColumn
          Caption = 'ASAL PASIEN'
          DataBinding.FieldName = 'asalPasien'
          Width = 152
        end
        object cxgrdbclmnGrid1DBTableView1carabayar: TcxGridDBColumn
          Caption = 'CARA BAYAR'
          DataBinding.FieldName = 'carabayar'
          Width = 137
        end
        object cxgrdbclmnGrid1DBTableView1penjamin: TcxGridDBColumn
          Caption = 'PENJAMIN'
          DataBinding.FieldName = 'penjamin'
          Width = 243
        end
        object cxgrdbclmnGrid1DBTableView1rawatInap: TcxGridDBColumn
          Caption = 'RAWAT INAP'
          DataBinding.FieldName = 'rawatInap'
          Width = 128
        end
        object cxgrdbclmnGrid1DBTableView1kelas: TcxGridDBColumn
          Caption = 'KELAS'
          DataBinding.FieldName = 'kelas'
          Width = 97
        end
        object cxgrdbclmnGrid1DBTableView1noKamar: TcxGridDBColumn
          Caption = 'NO KAMAR'
          DataBinding.FieldName = 'noKamar'
          Width = 116
        end
        object cxgrdbclmnGrid1DBTableView1noBed: TcxGridDBColumn
          Caption = 'NO BED'
          DataBinding.FieldName = 'noBed'
          Width = 82
        end
        object cxgrdbclmnGrid1DBTableView1statusKeluar: TcxGridDBColumn
          Caption = 'KETERANGAN'
          DataBinding.FieldName = 'statusKeluar'
          Width = 160
        end
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'PETUGAS'
          DataBinding.FieldName = 'pengguna'
          Width = 264
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 506
    Width = 1360
    Height = 53
    Align = alBottom
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lblNoRmNama: TLabel
      Left = 8
      Top = 17
      Width = 148
      Height = 23
      Caption = 'No. RM / Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNoRmNama: TEdit
      Left = 160
      Top = 10
      Width = 257
      Height = 33
      TabOrder = 0
      OnChange = edtNoRmNamaChange
      OnClick = edtNoRmNamaClick
    end
    object btnKartuBerobat: TcxButton
      Left = 432
      Top = 13
      Width = 137
      Height = 25
      Caption = 'KARTU BEROBAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object btnGelang: TcxButton
      Left = 680
      Top = 13
      Width = 97
      Height = 25
      Caption = 'GELANG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object btnLabel2x1: TcxButton
      Left = 576
      Top = 12
      Width = 97
      Height = 25
      Caption = 'LABEL 2X1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object btnBatalPasien: TcxButton
      Left = 1288
      Top = 15
      Width = 129
      Height = 25
      Caption = 'BATAL PASIEN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnBatalPasienClick
    end
    object btnGantiKamar: TcxButton
      Left = 784
      Top = 13
      Width = 121
      Height = 25
      Caption = 'GANTI KAMAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnGantiKamarClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1360
    Height = 49
    Align = alTop
    Caption = 'DAFTAR DATA PASIEN RAWAT INAP'
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object lblTanggal: TLabel
      Left = 16
      Top = 16
      Width = 76
      Height = 23
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlKeluar: TPanel
      Left = 1222
      Top = 1
      Width = 137
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = pnlKeluarClick
    end
    object dtpTglHariIni: TDateTimePicker
      Left = 104
      Top = 16
      Width = 129
      Height = 27
      Date = 43528.389577870370000000
      Time = 43528.389577870370000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = dtpTglHariIniChange
      OnKeyPress = dtpTglHariIniKeyPress
    end
  end
end
