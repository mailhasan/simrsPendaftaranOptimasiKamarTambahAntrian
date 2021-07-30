object FDataDaftarPasienIgd: TFDataDaftarPasienIgd
  Left = 211
  Top = 128
  Width = 1456
  Height = 876
  Caption = 'DAFTAR DATA PASIEN UGD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTegah: TPanel
    Left = 0
    Top = 57
    Width = 1440
    Height = 720
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
      Width = 1438
      Height = 718
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataSimrs.dsvw_pasienrawatjalan
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cxgrdbclmnGrid1DBTableView1noDaftar
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        object cxgrdbclmnGrid1DBTableView1noDaftar: TcxGridDBColumn
          Caption = 'NO DAFTAR'
          DataBinding.FieldName = 'noDaftar'
          Width = 198
        end
        object cxgrdbclmnGrid1DBTableView1noRekamedis: TcxGridDBColumn
          Caption = 'NO RM'
          DataBinding.FieldName = 'noRekamedis'
          Width = 113
        end
        object cxgrdbclmnGrid1DBTableView1tglDaftar: TcxGridDBColumn
          Caption = 'TGL DAFTAR'
          DataBinding.FieldName = 'tglDaftar'
        end
        object cxgrdbclmnGrid1DBTableView1nmPasien: TcxGridDBColumn
          Caption = 'NAMA PASIEN'
          DataBinding.FieldName = 'nmPasien'
          Width = 344
        end
        object cxgrdbclmnGrid1DBTableView1unit: TcxGridDBColumn
          Caption = 'UNIT'
          DataBinding.FieldName = 'unit'
          Width = 92
        end
        object cxgrdbclmnGrid1DBTableView1carabayar: TcxGridDBColumn
          Caption = 'CARA BAYAR'
          DataBinding.FieldName = 'carabayar'
          Width = 143
        end
        object cxgrdbclmnGrid1DBTableView1penjamin: TcxGridDBColumn
          Caption = 'PENJAMIN'
          DataBinding.FieldName = 'penjamin'
          Width = 237
        end
        object cxgrdbclmnGrid1DBTableView1asalPasien: TcxGridDBColumn
          Caption = 'ASAL PASIEN'
          DataBinding.FieldName = 'asalPasien'
          Width = 169
        end
        object cxgrdbclmnGrid1DBTableView1statusKeluar: TcxGridDBColumn
          Caption = 'STATUS KELUAR'
          DataBinding.FieldName = 'statusKeluar'
          Width = 176
        end
        object cxgrdbclmnGrid1DBTableView1caraKeluar: TcxGridDBColumn
          Caption = 'CARA KELUAR'
          DataBinding.FieldName = 'caraKeluar'
          Width = 152
        end
        object cxgrdbclmnGrid1DBTableView1noKartuPenjamin: TcxGridDBColumn
          Caption = 'NO KARTU PENJAMIN'
          DataBinding.FieldName = 'noKartuPenjamin'
          Width = 218
        end
        object cxgrdbclmnGrid1DBTableView1noSepPenjamin: TcxGridDBColumn
          Caption = 'NO SEP'
          DataBinding.FieldName = 'noSepPenjamin'
          Width = 166
        end
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'PETUGAS'
          DataBinding.FieldName = 'pengguna'
          Width = 119
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 777
    Width = 1440
    Height = 60
    Align = alBottom
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object btnBatalPasien: TcxButton
      Left = 1288
      Top = 16
      Width = 129
      Height = 25
      Caption = 'BATAL PASIEN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnBatalPasienClick
    end
    object btnKartuBerobatUgd: TButton
      Left = 25
      Top = 16
      Width = 97
      Height = 31
      Caption = 'KARTU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnKartuBerobatUgdClick
    end
    object btnLabelUgd: TButton
      Left = 128
      Top = 16
      Width = 97
      Height = 31
      Caption = 'GELANG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnLabelUgdClick
    end
    object btnLabel2x1Ugd: TButton
      Left = 232
      Top = 16
      Width = 105
      Height = 31
      Caption = 'LABEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnLabel2x1UgdClick
    end
    object btnGantiPenjamin: TButton
      Left = 344
      Top = 16
      Width = 185
      Height = 33
      Caption = 'Ganti Penjamin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnGantiPenjaminClick
    end
    object btnPrinKarcis: TButton
      Left = 536
      Top = 16
      Width = 145
      Height = 31
      Caption = 'PRINT KARCIS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnPrinKarcisClick
    end
    object btnPINERE: TcxButton
      Left = 688
      Top = 16
      Width = 145
      Height = 31
      Caption = 'RUANG PINERE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnPINEREClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1440
    Height = 57
    Align = alTop
    Caption = 'DAFTAR DATA PASIEN HARI INI'
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object lblTanggal: TLabel
      Left = 22
      Top = 19
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
      Left = 1302
      Top = 1
      Width = 137
      Height = 55
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
      Left = 112
      Top = 16
      Width = 225
      Height = 32
      Date = 43528.389577870370000000
      Time = 43528.389577870370000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = dtpTglHariIniKeyPress
    end
  end
end
