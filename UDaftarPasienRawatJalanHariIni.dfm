object FDaftarPasienHariIniRajal: TFDaftarPasienHariIniRajal
  Left = 191
  Top = 125
  Width = 1395
  Height = 692
  Align = alClient
  Caption = 'DAFTAR PASIEN RAWAT JALAN HARI INI'
  Color = clBtnFace
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
    Width = 1379
    Height = 551
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
      Width = 1377
      Height = 549
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
            DisplayText = 'JUMLAH : '
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.Footer = True
        object cxgrdbclmnGrid1DBTableView1noDaftar: TcxGridDBColumn
          Caption = 'NO DAFTAR'
          DataBinding.FieldName = 'noDaftar'
          Width = 186
        end
        object cxgrdbclmnGrid1DBTableView1tglDaftar: TcxGridDBColumn
          Caption = 'TGL DAFTAR'
          DataBinding.FieldName = 'tglDaftar'
          Width = 209
        end
        object cxgrdbclmnGrid1DBTableView1noRekamedis: TcxGridDBColumn
          Caption = 'NO RM'
          DataBinding.FieldName = 'noRekamedis'
          Width = 114
        end
        object cxgrdbclmnGrid1DBTableView1nmPasien: TcxGridDBColumn
          Caption = 'NAMA PASIEN'
          DataBinding.FieldName = 'nmPasien'
          Width = 253
        end
        object cxgrdbclmnGrid1DBTableView1carabayar: TcxGridDBColumn
          Caption = 'CARA BAYAR'
          DataBinding.FieldName = 'carabayar'
          Width = 138
        end
        object cxgrdbclmnGrid1DBTableView1penjamin: TcxGridDBColumn
          Caption = 'PENJAMIN'
          DataBinding.FieldName = 'penjamin'
          Width = 243
        end
        object cxgrdbclmnGrid1DBTableView1unit: TcxGridDBColumn
          Caption = 'UNIT'
          DataBinding.FieldName = 'unit'
          Width = 114
        end
        object cxgrdbclmnGrid1DBTableView1statusKeluar: TcxGridDBColumn
          Caption = 'STATUS KELUAR'
          DataBinding.FieldName = 'statusKeluar'
          Width = 202
        end
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'PETUGAS'
          DataBinding.FieldName = 'pengguna'
          Width = 154
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 600
    Width = 1379
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
      Top = 16
      Width = 148
      Height = 23
      Caption = 'NO RM / NAMA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNoRmNama: TEdit
      Left = 168
      Top = 16
      Width = 257
      Height = 33
      TabOrder = 0
      OnChange = edtNoRmNamaChange
      OnClick = edtNoRmNamaClick
    end
    object btnKartuBerobat: TcxButton
      Left = 440
      Top = 16
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
      OnClick = btnKartuBerobatClick
    end
    object btnLabel2x1: TcxButton
      Left = 584
      Top = 16
      Width = 97
      Height = 25
      Caption = 'LABEL 2X1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnLabel2x1Click
    end
    object btnKarcis: TcxButton
      Left = 688
      Top = 16
      Width = 97
      Height = 25
      Caption = 'KARCIS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnKarcisClick
    end
    object btnBatalPasien: TcxButton
      Left = 1232
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
      TabOrder = 4
      OnClick = btnBatalPasienClick
    end
    object btnPrintSep: TcxButton
      Left = 792
      Top = 16
      Width = 97
      Height = 25
      Caption = 'PRINT SEP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1379
    Height = 49
    Align = alTop
    Caption = 'DAFTAR PASIEN RAWAT JALAN HARI INI'
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object lblTanggal: TLabel
      Left = 8
      Top = 14
      Width = 81
      Height = 24
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlKeluar: TPanel
      Left = 1241
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
      Left = 96
      Top = 11
      Width = 129
      Height = 27
      Date = 43528.389577870370000000
      Time = 43528.389577870370000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = dtpTglHariIniKeyPress
    end
  end
end
