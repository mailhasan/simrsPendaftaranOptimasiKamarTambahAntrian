object FKelas: TFKelas
  Left = 1000
  Top = 524
  Width = 252
  Height = 330
  Caption = 'KELAS'
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
  object dbgrdhKelas: TDBGridEh
    Left = 0
    Top = 0
    Width = 236
    Height = 248
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = DataSimrs.dsKelas
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'kdKelas'
        Footers = <>
        Title.Caption = 'KODE'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'kelas'
        Footers = <>
        Title.Caption = 'KELAS'
        Width = 144
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object grpPilih: TGroupBox
    Left = 0
    Top = 248
    Width = 236
    Height = 43
    Align = alBottom
    Caption = 'PROSES'
    TabOrder = 1
    object btnPilih: TButton
      Left = 8
      Top = 16
      Width = 129
      Height = 25
      Caption = 'PILIH'
      TabOrder = 0
      OnClick = btnPilihClick
    end
  end
end
