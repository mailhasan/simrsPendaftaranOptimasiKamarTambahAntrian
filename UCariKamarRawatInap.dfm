object FCariKamarRawatInap: TFCariKamarRawatInap
  Left = 393
  Top = 220
  Width = 1037
  Height = 588
  Caption = 'CARI KAMAR RAWAT INAP'
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
    Top = 41
    Width = 1021
    Height = 467
    Align = alClient
    TabOrder = 0
    object dbgrdh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1019
      Height = 465
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DataSimrs.dsvw_datarawatinap
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = dbgrdh1CellClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'rawatInap'
          Footer.FieldName = 'kdTarifKelasKmr'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'RAWAT INAP'
          Width = 124
        end
        item
          EditButtons = <>
          FieldName = 'kelas'
          Footers = <>
          Title.Caption = 'KELAS'
          Width = 124
        end
        item
          EditButtons = <>
          FieldName = 'noKamar'
          Footers = <>
          Title.Caption = 'NO KAMAR'
          Width = 81
        end
        item
          EditButtons = <>
          FieldName = 'noBed'
          Footers = <>
          Title.Caption = 'NO BED'
          Width = 89
        end
        item
          EditButtons = <>
          FieldName = 'jenisGenderBed'
          Footers = <>
          Title.Caption = 'JENIS GENDER BED'
          Width = 142
        end
        item
          EditButtons = <>
          FieldName = 'tarifKmr'
          Footers = <>
          Title.Caption = 'TARIF KAMAR'
          Width = 122
        end
        item
          EditButtons = <>
          FieldName = 'statusBed'
          Footers = <>
          Title.Caption = 'STATUS BED'
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 508
    Width = 1021
    Height = 41
    Align = alBottom
    Color = 15115304
    TabOrder = 1
    object lblCariKamar: TLabel
      Left = 16
      Top = 16
      Width = 28
      Height = 13
      Caption = 'CARI '
    end
    object edtCari: TEdit
      Left = 56
      Top = 8
      Width = 337
      Height = 21
      TabOrder = 0
      OnChange = edtCariChange
    end
    object btnPilih: TButton
      Left = 400
      Top = 8
      Width = 75
      Height = 25
      Caption = 'PILIH'
      TabOrder = 1
      OnClick = btnPilihClick
    end
    object btnRefreshData: TButton
      Left = 488
      Top = 8
      Width = 113
      Height = 25
      Caption = 'REFRESH DATA'
      TabOrder = 2
      OnClick = btnRefreshDataClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1021
    Height = 41
    Align = alTop
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
