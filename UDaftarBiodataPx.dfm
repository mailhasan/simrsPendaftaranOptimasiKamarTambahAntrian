object FDaftarDataBiodataPasien: TFDaftarDataBiodataPasien
  Left = 191
  Top = 125
  Width = 1249
  Height = 659
  Caption = 'Daftar Data Biodata Pasien'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTegah: TPanel
    Left = 0
    Top = 49
    Width = 1233
    Height = 519
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object strngrdDataPasien: TStringGrid
      Left = 1
      Top = 1
      Width = 1231
      Height = 517
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 568
    Width = 1233
    Height = 52
    Align = alBottom
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object btnDaftar: TButton
      Left = 23
      Top = 11
      Width = 185
      Height = 25
      Caption = 'EDIT BIODATA PASIEN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnDaftarClick
    end
    object btnPrintLabel: TcxButton
      Left = 216
      Top = 8
      Width = 201
      Height = 25
      Caption = 'PRINT LABEL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnPrintLabelClick
    end
    object btnEditPenjamin: TButton
      Left = 424
      Top = 8
      Width = 209
      Height = 25
      Caption = 'EDIT PENJAMIN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnEditPenjaminClick
    end
    object btnKOREKSIPENANGGUNGJAWAB: TButton
      Left = 640
      Top = 8
      Width = 233
      Height = 25
      Caption = 'KOREKSI PENANGGUNG JAWAB'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnKOREKSIPENANGGUNGJAWABClick
    end
    object btnLengkapiFoto: TButton
      Left = 880
      Top = 8
      Width = 185
      Height = 25
      Caption = 'LENGKAPI FOTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnLengkapiFotoClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1233
    Height = 49
    Align = alTop
    Caption = 'DAFTAR DATA PASIEN '
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object lblNoRmNama: TLabel
      Left = 16
      Top = 12
      Width = 142
      Height = 23
      Caption = 'No. RM/ Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlKeluar: TPanel
      Left = 1095
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
    object edtNoRmNama: TEdit
      Left = 168
      Top = 8
      Width = 257
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = edtNoRmNamaChange
    end
  end
end
