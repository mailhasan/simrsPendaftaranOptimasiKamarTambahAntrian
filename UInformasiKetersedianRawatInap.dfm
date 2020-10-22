object FInformasiKetersedianRawatInap: TFInformasiKetersedianRawatInap
  Left = 190
  Top = 124
  Width = 1088
  Height = 563
  Align = alClient
  Caption = 'INFORMASI KETERSEIAN KAMAR RAWAT INAP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1072
    Height = 41
    Align = alTop
    Caption = 'INFORMASI KETERSEDIAN KAMAR'
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 1072
    Height = 442
    Align = alClient
    TabOrder = 1
    object dbgrdh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1070
      Height = 440
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
      Columns = <
        item
          EditButtons = <>
          FieldName = 'rawatInap'
          Footer.FieldName = 'kdTarifKelasKmr'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'RAWAT INAP'
          Width = 188
        end
        item
          EditButtons = <>
          FieldName = 'kelas'
          Footers = <>
          Title.Caption = 'KELAS'
        end
        item
          EditButtons = <>
          FieldName = 'noKamar'
          Footers = <>
          Title.Caption = 'NO KAMAR'
        end
        item
          EditButtons = <>
          FieldName = 'noBed'
          Footers = <>
          Title.Caption = 'NO BED'
        end
        item
          EditButtons = <>
          FieldName = 'jenisGenderBed'
          Footers = <>
          Title.Caption = 'JENIS GENDER BED'
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
    Top = 483
    Width = 1072
    Height = 41
    Align = alBottom
    Color = 15115304
    TabOrder = 2
  end
end
