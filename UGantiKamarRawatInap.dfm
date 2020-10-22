object FGantiKamarRawatInap: TFGantiKamarRawatInap
  Left = 264
  Top = 125
  Width = 590
  Height = 589
  Caption = 'GANTI KAMAR RAWAT INAP'
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
  object pnlTegah: TPanel
    Left = 0
    Top = 49
    Width = 574
    Height = 448
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object grpDetailKamar: TGroupBox
      Left = 0
      Top = -4
      Width = 569
      Height = 193
      Caption = 'SEBELUMNYA'
      TabOrder = 0
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
        Height = 33
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 0
      end
      object edtNoKamar: TEdit
        Left = 152
        Top = 88
        Width = 193
        Height = 33
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 1
      end
      object edtKelas: TEdit
        Left = 152
        Top = 120
        Width = 193
        Height = 33
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 2
      end
      object edtTarif: TEdit
        Left = 352
        Top = 120
        Width = 185
        Height = 33
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 3
      end
      object edtKdRawatInap: TEdit
        Left = 152
        Top = 56
        Width = 193
        Height = 33
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 4
      end
      object edtNoBed: TEdit
        Left = 352
        Top = 88
        Width = 185
        Height = 33
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 5
      end
      object edtKdTarifKamar: TEdit
        Left = 352
        Top = 56
        Width = 185
        Height = 33
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 6
      end
      object edtStatusKamar: TEdit
        Left = 152
        Top = 152
        Width = 385
        Height = 33
        Enabled = False
        TabOrder = 7
      end
    end
    object grpCariRawatInap: TGroupBox
      Left = -1
      Top = 192
      Width = 570
      Height = 65
      Caption = 'CARI RAWAT INAP GANTI'
      TabOrder = 1
      object cbbKamar: TcxLookupComboBox
        Left = 8
        Top = 25
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
    end
    object grpGanti: TGroupBox
      Left = 0
      Top = 252
      Width = 569
      Height = 193
      Caption = 'RAWAT INAP GANTI'
      TabOrder = 2
      object lblRawatInapGanti: TLabel
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
      object lblRanapGanti: TLabel
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
      object lblKamarGanti: TLabel
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
      object lblNoKamarGanti: TLabel
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
      object lblBedGanti: TLabel
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
      object edtRawatInapGanti: TEdit
        Left = 152
        Top = 24
        Width = 385
        Height = 33
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 0
      end
      object edtNoKamarGanti1: TEdit
        Left = 152
        Top = 88
        Width = 193
        Height = 33
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 1
      end
      object edtKelasGanti: TEdit
        Left = 152
        Top = 120
        Width = 145
        Height = 33
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object edtTarifGanti: TEdit
        Left = 352
        Top = 120
        Width = 185
        Height = 33
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object edtKdRawatInapGanti: TEdit
        Left = 152
        Top = 56
        Width = 193
        Height = 33
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 4
      end
      object edtBedGanti: TEdit
        Left = 352
        Top = 88
        Width = 185
        Height = 33
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 5
      end
      object edtKdTarifGanti: TEdit
        Left = 352
        Top = 56
        Width = 185
        Height = 33
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 6
      end
      object edtStatusKamarGanti: TEdit
        Left = 152
        Top = 152
        Width = 385
        Height = 33
        Enabled = False
        TabOrder = 7
      end
      object btnKelas: TButton
        Left = 304
        Top = 128
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
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 497
    Width = 574
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
    object btnGantiDataKamar: TcxButton
      Left = 8
      Top = 16
      Width = 217
      Height = 25
      Caption = 'GANTI DATA KAMAR'
      TabOrder = 0
      OnClick = btnGantiDataKamarClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 574
    Height = 49
    Align = alTop
    Caption = 'GANTI KAMAR RAWAT INAP'
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object lbl1: TLabel
      Left = 56
      Top = 16
      Width = 38
      Height = 24
      Caption = 'lbl1'
      Visible = False
    end
    object pnlKeluar: TPanel
      Left = 436
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
  end
end
