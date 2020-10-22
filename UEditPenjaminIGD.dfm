object FEditPenjaminIGD: TFEditPenjaminIGD
  Left = 325
  Top = 125
  Width = 653
  Height = 301
  Caption = 'EDIT PENJAMIN IGD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 637
    Height = 165
    Align = alClient
    TabOrder = 0
    object grpPenjamin: TGroupBox
      Left = -1
      Top = 1
      Width = 626
      Height = 144
      Caption = 'PENJAMIN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lblPenjamin: TLabel
        Left = 24
        Top = 54
        Width = 69
        Height = 18
        Caption = 'Penjamin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAtasNama: TLabel
        Left = 24
        Top = 112
        Width = 80
        Height = 18
        Caption = 'Atas Nama'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCaraBayar: TLabel
        Left = 24
        Top = 24
        Width = 83
        Height = 18
        Caption = 'Cara Bayar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNoSEP: TLabel
        Left = 320
        Top = 80
        Width = 63
        Height = 19
        Caption = 'No. SEP'
      end
      object lblNoKartu: TLabel
        Left = 24
        Top = 80
        Width = 71
        Height = 18
        Caption = 'No. Kartu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtNoSep: TEdit
        Left = 392
        Top = 80
        Width = 217
        Height = 27
        TabOrder = 0
        OnKeyPress = edtNoSepKeyPress
      end
      object edtAtasNama: TEdit
        Left = 112
        Top = 112
        Width = 497
        Height = 27
        TabOrder = 1
        OnKeyPress = edtAtasNamaKeyPress
      end
      object cbbPenjamin: TcxLookupComboBox
        Left = 112
        Top = 48
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'kdPenjamin'
        Properties.ListColumns = <
          item
            Caption = 'PENJAMIN'
            FieldName = 'penjamin'
          end>
        Properties.ListSource = DataSimrs.dsPenjamin
        Properties.MaxLength = 50
        TabOrder = 2
        OnKeyPress = cbbPenjaminKeyPress
        Width = 273
      end
      object cbbCaraBayar: TcxLookupComboBox
        Left = 112
        Top = 16
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'kdCaraBayar'
        Properties.ListColumns = <
          item
            Caption = 'CARA BAYAR'
            FieldName = 'carabayar'
          end>
        Properties.ListSource = DataSimrs.dsCaraBayar
        TabOrder = 3
        OnKeyPress = cbbCaraBayarKeyPress
        Width = 273
      end
      object edtNoKartu: TEdit
        Left = 112
        Top = 80
        Width = 201
        Height = 27
        TabOrder = 4
        OnKeyPress = edtNoKartuKeyPress
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 214
    Width = 637
    Height = 48
    Align = alBottom
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object btnSimpan: TButton
      Left = 16
      Top = 14
      Width = 89
      Height = 25
      Caption = 'SIMPAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
    Width = 637
    Height = 49
    Align = alTop
    Caption = 'EDIT PENJAMIN PASIEN '
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object lblNoRm: TLabel
      Left = 32
      Top = 16
      Width = 86
      Height = 24
      Caption = 'lblNoRm'
      Visible = False
    end
    object pnlKeluar: TPanel
      Left = 499
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
