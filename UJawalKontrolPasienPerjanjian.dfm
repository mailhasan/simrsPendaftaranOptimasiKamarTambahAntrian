object FJadwalKontrolPasienPerjanjian: TFJadwalKontrolPasienPerjanjian
  Left = 235
  Top = 154
  Width = 1272
  Height = 738
  Caption = 'JADWAL KONTROL PASIEN PERJANJIAN'
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
    Width = 1256
    Height = 49
    Align = alTop
    Caption = 'JADWAL KONTROL PASIEN PERJANJIAN'
    Color = clMenuHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 1118
      Top = 1
      Width = 137
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = pnlKeluarClick
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 650
    Width = 1256
    Height = 49
    Align = alBottom
    Color = clMenuHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object dtpTgl: TcxDateEdit
      Left = 8
      Top = 16
      Properties.OnChange = dtpTglPropertiesChange
      TabOrder = 0
      Width = 241
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 1256
    Height = 601
    Align = alClient
    TabOrder = 2
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 1254
      Height = 599
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataSimrs.dsJadwalKontrolPasien
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        object cxgrdbclmnGrid1DBTableView1tglJadwalKontrolPasienRajal: TcxGridDBColumn
          Caption = 'TGL JADWAL'
          DataBinding.FieldName = 'tglJadwalKontrolPasienRajal'
          Width = 91
        end
        object cxgrdbclmnGrid1DBTableView1noRekamedis: TcxGridDBColumn
          Caption = 'NO RM'
          DataBinding.FieldName = 'noRekamedis'
          Width = 103
        end
        object cxgrdbclmnGrid1DBTableView1nmPasien: TcxGridDBColumn
          Caption = 'NM PASIEN'
          DataBinding.FieldName = 'nmPasien'
          Width = 257
        end
        object cxgrdbclmnGrid1DBTableView1tempatLahir: TcxGridDBColumn
          Caption = 'TEMPAT LAHIR'
          DataBinding.FieldName = 'tempatLahir'
          Width = 135
        end
        object cxgrdbclmnGrid1DBTableView1tglLahir: TcxGridDBColumn
          Caption = 'TGL LAHIR'
          DataBinding.FieldName = 'tglLahir'
          Width = 113
        end
        object cxgrdbclmnGrid1DBTableView1alamat: TcxGridDBColumn
          Caption = 'ALAMAT'
          DataBinding.FieldName = 'alamat'
          Width = 390
        end
        object cxgrdbclmnGrid1DBTableView1unit: TcxGridDBColumn
          Caption = 'UNIT'
          DataBinding.FieldName = 'unit'
          Width = 49
        end
        object cxgrdbclmnGrid1DBTableView1namapetugasMedis: TcxGridDBColumn
          Caption = 'DOKTER'
          DataBinding.FieldName = 'namapetugasMedis'
          Width = 149
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
end
