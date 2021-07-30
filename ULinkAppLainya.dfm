object FLinkAppLainya: TFLinkAppLainya
  Left = 192
  Top = 125
  Width = 847
  Height = 320
  Caption = 'LINK APP LAINYA'
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
    Width = 831
    Height = 49
    Align = alTop
    Caption = 'LINK APLIKASI LAINYA'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 232
    Width = 831
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
  object pnlTENGAH: TPanel
    Left = 0
    Top = 49
    Width = 831
    Height = 183
    Align = alClient
    TabOrder = 2
    object lblKARTU: TLabel
      Left = 16
      Top = 16
      Width = 37
      Height = 13
      Caption = 'KARTU'
    end
    object lblGELANG: TLabel
      Left = 16
      Top = 40
      Width = 44
      Height = 13
      Caption = 'GELANG'
    end
    object lblLABEL2X1: TLabel
      Left = 16
      Top = 64
      Width = 52
      Height = 13
      Caption = 'LABEL2X1'
    end
    object lblLABELPDC: TLabel
      Left = 16
      Top = 88
      Width = 58
      Height = 13
      Caption = 'LABEL PDC'
    end
    object lblKARCIS: TLabel
      Left = 16
      Top = 112
      Width = 39
      Height = 13
      Caption = 'KARCIS'
    end
    object lblLAPORAN: TLabel
      Left = 16
      Top = 136
      Width = 51
      Height = 13
      Caption = 'LAPORAN'
    end
    object edtLINKKARTU: TEdit
      Left = 112
      Top = 16
      Width = 705
      Height = 21
      TabOrder = 0
      Text = 'edtLINKKARTU'
    end
    object edtLINKGELANG: TEdit
      Left = 112
      Top = 40
      Width = 705
      Height = 21
      TabOrder = 1
      Text = 'edtLINKGELANG'
    end
    object edtLINKLABEL2X1: TEdit
      Left = 112
      Top = 64
      Width = 705
      Height = 21
      TabOrder = 2
      Text = 'edtLINKLABEL2X1'
    end
    object edtLINKPDC: TEdit
      Left = 112
      Top = 88
      Width = 705
      Height = 21
      TabOrder = 3
      Text = 'edtLINKPDC'
    end
    object edtLINKKARCI: TEdit
      Left = 112
      Top = 112
      Width = 705
      Height = 21
      TabOrder = 4
      Text = 'edtLINKKARCI'
    end
    object edtLINKLAPORANPENDAFTARAN: TEdit
      Left = 112
      Top = 136
      Width = 705
      Height = 21
      TabOrder = 5
      Text = 'edtLINKLAPORANPENDAFTARAN'
    end
  end
end
