object FSettingPrinter: TFSettingPrinter
  Left = 461
  Top = 210
  Width = 561
  Height = 310
  Caption = 'SETTING PRINTER'
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
    Top = 49
    Width = 545
    Height = 173
    Align = alClient
    TabOrder = 0
    object cxlblNamaKomputer: TcxLabel
      Left = 8
      Top = 16
      Caption = 'NAMA KOMPUTER'
    end
    object cxlblPrinterKartu: TcxLabel
      Left = 8
      Top = 40
      Caption = 'PRINTER KARTU'
    end
    object cxlblPrinterGelang: TcxLabel
      Left = 8
      Top = 64
      Caption = 'PRINTER GELANG LAKI'
    end
    object cxlblPrinterLabel: TcxLabel
      Left = 8
      Top = 112
      Caption = 'PRINTER LABEL'
    end
    object cxlblPinterKarcis: TcxLabel
      Left = 8
      Top = 136
      Caption = 'PRINTER KARCIS'
    end
    object cxtxtdtNamaKomputer: TcxTextEdit
      Left = 184
      Top = 8
      TabOrder = 5
      Text = 'cxtxtdtNamaKomputer'
      Width = 321
    end
    object cbbPrinterKartu: TComboBox
      Left = 184
      Top = 40
      Width = 321
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Text = 'List Printer'
    end
    object cbbPrinterGelang: TComboBox
      Left = 184
      Top = 64
      Width = 321
      Height = 21
      ItemHeight = 13
      TabOrder = 7
      Text = 'List Printer'
    end
    object cbbPrinterLabel: TComboBox
      Left = 184
      Top = 112
      Width = 321
      Height = 21
      ItemHeight = 13
      TabOrder = 8
      Text = 'List Printer'
    end
    object cbbPrinterKarcis: TComboBox
      Left = 184
      Top = 136
      Width = 321
      Height = 21
      ItemHeight = 13
      TabOrder = 9
      Text = 'List Printer'
    end
    object cxlblPrinterGelangPerempuan: TcxLabel
      Left = 8
      Top = 88
      Caption = 'PRINTER GELANG PEREMPUAN'
    end
    object cbbPrinterGelangPerempuan: TComboBox
      Left = 184
      Top = 88
      Width = 321
      Height = 21
      ItemHeight = 13
      TabOrder = 11
      Text = 'cbbPrinterGelangPerempuan'
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 222
    Width = 545
    Height = 49
    Align = alBottom
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -30
    Font.Name = 'SimSun'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object btnSimpan: TcxButton
      Left = 16
      Top = 16
      Width = 81
      Height = 25
      Caption = 'SIMPAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnSimpanClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 49
    Align = alTop
    Caption = 'SETTING PRINTER'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
