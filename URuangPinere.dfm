object FRuangPinere: TFRuangPinere
  Left = 465
  Top = 195
  BorderStyle = bsNone
  Caption = 'RUANG PINERE...?'
  ClientHeight = 327
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 49
    Align = alTop
    Caption = 'APAKAH PASIEN DI DAFTARKAN KE RUANG PINERE?'
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 437
      Top = 1
      Width = 99
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = pnlKeluarClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 537
    Height = 235
    Align = alClient
    TabOrder = 1
    object lblNODAFTAR: TLabel
      Left = 16
      Top = 8
      Width = 62
      Height = 13
      Caption = 'NO DAFTAR'
    end
    object lblNODAFTARIGD: TLabel
      Left = 16
      Top = 32
      Width = 84
      Height = 13
      Caption = 'NO DAFTAR IGD'
    end
    object lblNORM: TLabel
      Left = 16
      Top = 56
      Width = 36
      Height = 13
      Caption = 'NO RM'
    end
    object lblNAMA: TLabel
      Left = 16
      Top = 80
      Width = 31
      Height = 13
      Caption = 'NAMA'
    end
    object lblTTL: TLabel
      Left = 16
      Top = 104
      Width = 20
      Height = 13
      Caption = 'TTL'
    end
    object lblALAMAT: TLabel
      Left = 16
      Top = 136
      Width = 43
      Height = 13
      Caption = 'ALAMAT'
    end
    object edtNODAFTAR: TEdit
      Left = 128
      Top = 8
      Width = 249
      Height = 21
      TabOrder = 0
      Text = 'edtNODAFTAR'
    end
    object edtNODAFTARIGD: TEdit
      Left = 128
      Top = 32
      Width = 249
      Height = 21
      TabOrder = 1
      Text = 'edtNODAFTARIGD'
    end
    object edtNORM: TEdit
      Left = 128
      Top = 56
      Width = 145
      Height = 21
      TabOrder = 2
      Text = 'edtNORM'
    end
    object edtNAMA: TEdit
      Left = 128
      Top = 80
      Width = 377
      Height = 21
      TabOrder = 3
      Text = 'edtNAMA'
    end
    object edtTTL: TEdit
      Left = 128
      Top = 104
      Width = 265
      Height = 21
      TabOrder = 4
      Text = 'edtTTL'
    end
    object mmoALAMAT: TMemo
      Left = 128
      Top = 136
      Width = 377
      Height = 89
      Lines.Strings = (
        'mmoALAMAT')
      TabOrder = 5
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 284
    Width = 537
    Height = 43
    Align = alBottom
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object btnDAFTAR: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'DAFTAR'
      TabOrder = 0
      OnClick = btnDAFTARClick
    end
    object btnBATAL: TButton
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BATAL'
      TabOrder = 1
      OnClick = btnBATALClick
    end
  end
end
